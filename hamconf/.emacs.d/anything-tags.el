;;; anything-tags.el --- Yet another etags interface with anything.

;; Copyright (C) 2009  Taiki SUGAWARA

;; Author: Taiki SUGAWARA <buzz.taiki@gmail.com>
;; Keywords: anything, etags

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(require 'cl)
(require 'anything-etags)

(defvar anything-tags-buffer-name " *Anything-Tags*")

(defvar anything-c-source-tags-select
  '((name . "Tags")
    (init . (anything-tags-init))
    (candidates-in-buffer)
    (action
     ("Select Tag" . anything-tags-select))))

(defun anything-tags-buffer-name (tag-file)
  (concat anything-tags-buffer-name tag-file))

(defun anything-tags-tag-file-valid-p (tag-file)
  (and tag-file
       (file-exists-p tag-file)
       (file-regular-p tag-file)))
  
(defun anything-tags-table-buffers (tag-file)
  (remove-if-not (lambda (x)
                   (and (buffer-file-name x)
                        (string= (expand-file-name (buffer-file-name x))
                                 (expand-file-name tag-file))))
                 (buffer-list)))

;;; unified tag selection
(defun anything-tags-init ()
  (let ((tag-file (anything-etags-get-tag-file)))
    (when (anything-tags-tag-file-valid-p tag-file)
      (unless (and (get-buffer (anything-tags-buffer-name tag-file))
                   (anything-tags-table-buffers tag-file))
        (anything-tags-generate-tags-buffer tag-file))
      (with-current-buffer (anything-candidate-buffer 'global)
        (erase-buffer)
        (insert-buffer-substring (anything-tags-buffer-name tag-file))))))

(defun anything-tags-select (tag)
  (let ((tag-file (anything-etags-get-tag-file))
        tag-props-list)
    (with-current-buffer (anything-tags-buffer-name tag-file)
      (setq tag-props-list (anything-tags-find-tag-props-list tag-file tag)))
    (if (= (length tag-props-list) 1)
        (anything-tags-goto-tag (car tag-props-list))
      (anything-tags-guess-tag-of-tags tag-props-list))))

;;; tag of tags selection
(defun anything-tags-guess-tag-of-tags (tag-props-list)
  (anything (list (anything-tags-guess-tag-of-tags-source
                   "Select Tag" tag-props-list))))

(defun anything-tags-guess-tag-of-tags-source (name tag-props-list)
  `((name . ,name)
    (candidates . ,tag-props-list)
    (candidate-transformer
     (lambda (cds)
       (mapcar (lambda (x)
                 (cons (format "%s:\n  %s"
                               (plist-get x :file-label)
                               (plist-get x :tag))
                       x))
               cds)))
    (multiline . t)
    (action
     ("Goto Tag" . anything-tags-goto-tag))))

;;; tag jump
(defun anything-tags-goto-tag (tag-props)
  (let ((tag-info (plist-get tag-props :tag-info))
        (goto-func (plist-get tag-props :goto-func)))
    (tag-find-file-of-tag (plist-get tag-props :file-path))
    (widen)
    (funcall goto-func tag-info)))
  
;;; tag buffer manipulation
(defun anything-tags-generate-tags-buffer (tag-file)
  (interactive
   (let ((tag-file (anything-etags-get-tag-file)))
     (list (read-file-name "Find tag: "
                           (file-name-directory tag-file) nil t
                           (file-name-nondirectory tag-file)))))
  (when (anything-tags-tag-file-valid-p tag-file)
    (dolist (buf (anything-tags-table-buffers tag-file))
      (kill-buffer buf))
    (let (tab)
      (with-current-buffer (get-buffer-create (anything-tags-buffer-name tag-file))
        (erase-buffer)
        ;; visit tags table and save `tags-file-name' to buffer local variable.
        (let ((tags-add-tables t))
          (visit-tags-table tag-file t))

        (save-excursion
          (visit-tags-table-buffer)
          (setq tab (funcall tags-completion-table-function)))
        (let (list)
          (mapatoms (lambda (x) (push (symbol-name x) list)) tab)
          (setq list
                (sort list (lambda (a b)
                             (let ((cmp (compare-strings a 0 nil b 0 nil t)))
                               (if (eq cmp t) (string< a b) (< cmp 0))))))
          (dolist (x list)
            (insert x "\n")))))))

(defun anything-tags-find-tag-props-list (tag-file tag)
  ;; copy of `etags-tags-apropos'
  (save-excursion
    (visit-tags-table-buffer)
    (goto-char (point-min))
    (let ((case-fold-search nil)
          tags)
      (while (search-forward (concat "\^?" tag "\^a") nil t)
        (beginning-of-line)
        (let* ((goto-func goto-tag-location-function)
               (tag-info (save-excursion (funcall snarf-tag-function)))
               (tag (if (eq t (car tag-info)) nil (car tag-info)))
               (file-path (and tag (file-of-tag)))
               (file-label (and tag (file-of-tag t))))
          (when tag
            (push (list :tag tag :tag-info tag-info
                        :file-label file-label :file-path file-path
                        :goto-func goto-func)
                  tags)))
        (forward-line 1))
      tags)))
      
;;; find-tag emulation
(defun anything-tags-find-tag (tag)
  (interactive
   (list (funcall (or find-tag-default-function
                      (get major-mode 'find-tag-default-function)
                      'find-tag-default))))
  (anything '(anything-c-source-tags-select) tag nil nil tag))
            

(provide 'anything-tags)
;;; anything-tags.el ends here