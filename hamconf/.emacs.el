;;; language
(set-language-environment "Japanese")

;; ウィンドウ設定
(if window-system (progn
 (setq initial-frame-alist '((width . 120) (height . 30) (top . 40)))
 (set-background-color "Black")
 (set-foreground-color "White")
 (set-cursor-color "Gray")
))

;;; character-code
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; load other folder
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;fontサイズ
;(set-default-font "Takaoゴシック-9")
;(set-default-font "Inconsolata-9")
;(set-face-font 'variable-pitch "Inconsolata-9")

;;; behavior
(setq next-line-add-newlines nil)         ; ファイルの終端で勝手に新しい行を作らない
;(setq scroll-step 1)                      ; １行ずつスクロール
(setq next-screen-context-lines 1)        ; C-v/M-vで前のページの１行を残す
;(setq kill-whole-line t)                  ; C-kで改行も切り取る
(setq x-select-enable-clipboard t)        ; killringとクリップボードを同期する
(setq dabbrev-case-fold-search nil)       ; 動的保管にて大文字・小文字を区別する
(setq-default show-trailing-whitespace t) ; 行末の不要なスペースを強調表示する
;(setq-default tab-width 4)                ; タブ幅
;(setq-default indent-tabs-mode t)         ; インデントにタブを使わない
(add-hook 'before-save-hook 'delete-trailing-whitespace) ; 保存時に無駄なスペースを削除

;;タブ幅を 4 に設定
(setq-default tab-width 4 )
;;タブ幅の倍数を設定
(setq tab-stop-list
  '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30))

;;時刻表示
(setq display-time-24hr-format t); 時刻の書式をAM/PMではなく24時間表示にする
(setq display-time-day-and-date t)
(display-time)

;;動的略語補完dabbrev-jaのload
(load "dabbrev-ja")
(global-set-key "\C-j" 'dabbrev-completion) ;;デフォルトはM-/
(require'dabbrev-highlight)

;;anything
(require 'anything-config)
(setq anything-sources (list anything-c-source-buffers
                             anything-c-source-bookmarks
                             anything-c-source-recentf
                             anything-c-source-file-name-history
                             anything-c-source-locate))
(define-key anything-map (kbd "C-p") 'anything-previous-line)
(define-key anything-map (kbd "C-n") 'anything-next-line)
(define-key anything-map (kbd "C-v") 'anything-next-source)
(define-key anything-map (kbd "M-v") 'anything-previous-source)
(global-set-key (kbd "C-;") 'anything)

(require 'json)

;;python-mode
(add-hook 'python-mode-hook
      '(lambda()
         (setq indent-tabs-mode t)
         (setq indent-level 2)
         (setq python-indent 2)
         (setq tab-width 2)))

;(require 'ess-site)
(require 'auto-complete)
;(require 'auto-complete-yasnippet)
;(require 'auto-complete-acr)

;;if drag a file, opening new window
(define-key global-map [ns-drag-file] 'ns-find-file)

;;yasnippet
;(require 'yasnippet) ;; not yasnippet-bundle
;(yas/initialize)
;(yas/load-directory "/usr/share/emacs23/site-lisp/yasnippet-0.6.1c/snippets")

;;C-h を backspace として使いたい
(global-set-key "\C-h" 'delete-backward-char)
;;window 分割時、画面外に出る文章を折り返したい
(setq truncate-partial-width-windows nil)
;;起動時に出てくる message を消したい
(setq inhibit-startup-message t)

;;yank した文字列をハイライト表示したい
(defadvice yank (after ys:highlight-string activate)
 (let ((ol (make-overlay (mark t) (point))))
       (overlay-put ol 'face 'highlight)
       (sit-for 0.5)
       (delete-overlay ol)
 )
)
(defadvice yank-pop (after ys:highlight-string activate)
 (when (eq last-command 'yank)
       (let ((ol (make-overlay (mark t) (point))))
         (overlay-put ol 'face 'highlight)
         (sit-for 0.5)
         (delete-overlay ol)
       )
 )
)

;;タグファイルの自動生成
(defadvice find-tag (before c-tag-file activate)
  "Automatically create tags file."
  (let ((tag-file (concat default-directory "TAGS")))
    (unless (file-exists-p tag-file)
      (shell-command "etags *.[ch] *.el .*.el -o TAGS 2>/dev/null"))
    (visit-tags-table tag-file)))


;; backup file
;; 残さない
(setq make-backup-files nil)

;; auto-save-buffers
;(require 'auto-save-buffers)
;(run-with-idle-timer 5.0 t 'auto-save-buffers)


;;bash 起動
(when (require 'multi-term nil t)
	(setq multi-term-program "/bin/bash"))

;;undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

;; ElScreen
;; EmacsでGNU screen風のインターフェイスを使う
;(setq elscreen-prefix-key "\C-z")
;(require 'elscreen)
;(if window-system
;    (define-key elscreen-map "\C-z" 'iconify-or-deiconify-frame)
;  (define-key elscreen-map "\C-z" 'suspend-emacs))
;(defmacro elscreen-create-automatically (ad-do-it)
;  `(if (not (elscreen-one-screen-p))
;       ,ad-do-it
;     (elscreen-create)
;     (elscreen-notify-screen-modification 'force-immediately)
;     (elscreen-message "New screen is automatically created")))

(defadvice elscreen-next (around elscreen-create-automatically activate)
  (elscreen-create-automatically ad-do-it))

(defadvice elscreen-previous (around elscreen-create-automatically activate)
  (elscreen-create-automatically ad-do-it))

(defadvice elscreen-toggle (around elscreen-create-automatically activate)
  (elscreen-create-automatically ad-do-it))

(defun elscreen-frame-title-update ()
  (when (elscreen-screen-modified-p 'elscreen-frame-title-update)
    (let* ((screen-list (sort (elscreen-get-screen-list) '<))
	   (screen-to-name-alist (elscreen-get-screen-to-name-alist))
	   (title (mapconcat
		   (lambda (screen)
		     (format "%d%s %s"
			     screen (elscreen-status-label screen)
			     (get-alist screen screen-to-name-alist)))
		   screen-list " ")))
      (if (fboundp 'set-frame-name)
	  (set-frame-name title)
	(setq frame-title-format title)))))

(eval-after-load "elscreen"
  '(add-hook 'elscreen-screen-update-hook 'elscreen-frame-title-update))

;;C-tでバッファの切り替え
(defun previous-buffer ()
"Select previous window."
(interactive)
(bury-buffer))
(defun backward-buffer ()
"Select backward window."
(interactive)
(switch-to-buffer
(car (reverse (buffer-list)))))
(global-set-key "\C-t" 'previous-buffer)
(global-set-key "\M-\C-t" 'backward-buffer)


;; 行数表示
(require 'linum)
(global-linum-mode)


;; シフト + 矢印で範囲選択
(setq pc-selection-mode)
;;shift+矢印キーでの範囲選択
(setq transient-mark-mode t)

;; 対応する括弧を光らせる。
(show-paren-mode t)

;; ウィンドウを透明化
(add-to-list 'default-frame-alist '(alpha . (0.85 0.85)))

;;;;font-lock
(require 'font-lock)
(global-font-lock-mode t)
;;; 全角スペースを強調表示
(defface my-face-b-1 '((t (:background "gray"))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(("　" 0 my-face-b-1 append) ;;"全角スペース"
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
;; コメント
;(set-face-foreground 'font-lock-comment-delimiter-face "#00e000")
;(set-face-foreground 'font-lock-comment-face "#00e000")
;; コンスタント
;(set-face-foreground 'font-lock-constant-face "#b2e7fb")
;; doc (javadoc etc.)
;(set-face-foreground 'font-lock-doc-face "#72de5d")
;; 関数名 タグ名など
;(set-face-foreground 'font-lock-function-name-face "#00ffff")
;; Keyword
;(set-face-foreground 'font-lock-keyword-face "#0080ff")
;(set-face-bold-p 'font-lock-keyword-face t)
;; negation character
;(set-face-foreground 'font-lock-negation-char-face "red")
;; preprocessor
;(set-face-foreground 'font-lock-preprocessor-face "red")
;; 正規表現
;(set-face-foreground 'font-lock-regexp-grouping-backslash "")
;(set-face-foreground 'font-lock-regexp-grouping-construct "")
;; 文字列
;(set-face-foreground 'font-lock-string-face "#888888")
;; Type
;(set-face-foreground 'font-lock-type-face "#92b7ff")
;; 変数名
;(set-face-foreground 'font-lock-variable-name-face "#fafafa")
;; warning?
;(set-face-foreground 'font-lock-warning-face "#fafafa")

;;分割ウィンドウの移動
(windmove-default-keybindings)
(global-set-key [?\C-x up] (quote windmove-up))
(global-set-key [?\C-x down] (quote windmove-down))
(global-set-key [?\C-x right] (quote windmove-right))
(global-set-key [?\C-x left] (quote windmove-left))


;;全画面にしたり戻したり
(defun my-mac-toggle-max-window()
(interactive)
(if (frame-parameter nil 'fullscreen)
(set-frame-parameter nil 'fullscreen nil)
(set-frame-parameter nil 'fullscreen 'fullboth)))
(global-set-key "\C-c\C-m" 'my-mac-toggle-max-window)


;;タグジャンプする為の設定
(defadvice find-tag (before c-tag-file activate)
 "Automatically create tags file."
 (let ((tag-file (concat default-directory "TAGS")))
  (unless (file-exists-p tag-file)
       (shell-command "etags *.[ch] *.el .*.el -o TAGS 2>/dev/null"))
  (visit-tags-table tag-file)
 )
)

;; utf8
;(set-language-environment "Japanese")
;(set-terminal-coding-system 'utf-8)
;(set-keyboard-coding-system 'utf-8)
;(set-buffer-file-coding-system 'utf-8)
;(setq default-buffer-file-coding-system 'utf-8)

(setq visible-bell t) ;; 警告音を消す

(defface hlline-face
 '((((class color)
        (background dark))
       ;;(:background "dark state gray"))
       (:background "gray10"
                                :underline "gray24"))
  (((class color)
        (background light))
       (:background "SlateBlue2"
                                :underline nil))
  (t ()))
 "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
;;(setq hl-line-face 'underline)
(global-hl-line-mode)

;;mini buffer や kill-ring 等の履歴を次回起動時に持ち越したい
(when (require 'session nil t)
 (setq session-initialize '(de-saveplace session keys menus)
               session-globals-include '((kill-ring 50)
                                                                 (session-file-alist 100 t)
                                                                 (file-name-history 100)))
 (add-hook 'after-init-hook 'session-initialize))

;;行末にある余分な whitespace を削除したい
(defun trim ()
 "Trim excess whitespaces."
 (interactive "*")
 (let ((key (read-char "Convert spaces?: (t)abify (u)ntabify (n)o"))
               (reg (and transient-mark-mode mark-active)))
       (save-excursion
         (save-restriction
               (if reg
                       (narrow-to-region (region-beginning) (region-end)))
               (goto-char (point-min))
               (while (re-search-forward "[ \t]+$" nil t)
                 (replace-match "" nil nil))
               (if reg nil
                 (goto-char (point-max))
                 (delete-blank-lines))
               (cond
                ((= key ?t)
                 (tabify (point-min) (point-max)))
                ((= key ?u)
                 (untabify (point-min) (point-max)))))))
 (deactivate-mark))

;;; sense-region
;; http://taiyaki.org/elisp/sense-region/
(autoload 'sense-region-on "sense-region"
 "System to toggle region and rectangle." t nil)
(sense-region-on)

;;改行キーでオートインデントさせる
(global-set-key "\C-m" 'newline-and-indent)
;(global-set-key "\C-j" 'newline)

;;インプットメソッドをscimに設定
;(setq emacs-ime (getenv "anthy"))
;(setq default-input-method "japanese-anthy")
;(load-library "anthy")
;(setq emacs-ime (getenv "EMACS_IME"))
;(global-set-key [hiragana-katakana] 'toggle-input-method)

(require 'cl)
;; php-mode
(load-library "php-mode")
(require 'php-mode)
(autoload 'php-mode "php-mode")
;;;php-mode時のタブの調整
(add-hook 'php-mode-hook '(lambda () (setq tab-width 1)(setq indent-tabs-mode t)))
;; 拡張子が*.tplと*.incはphp-modeにする
(add-to-list 'auto-mode-alist '("\\.tpl$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.ctp$" . php-mode))
(require 'historyf)
(require 'cake)
(global-cake t)
(cake-set-default-keymap)

;; css-mode
(autoload 'css-mode "css-mode")
(setq auto-mode-alist
      (cons '("\\.css\\'" . css-mode) auto-mode-alist))
(setq cssm-indent-function #'cssm-c-style-indenter)
(add-hook 'css-mode-hook
	  '(lambda ()
	     (define-key cssm-mode-map (read-kbd-macro "M-j") 'cssm-complete-property)))

;; javascript-mode
(setq-default c-basic-offset 4)
(when (load "js2" t)
  (setq js2-cleanup-whitespace nil
;        js2-mirror-mode nil
	 js2-bounce-indent-flag nil
  )

  (defun indent-and-back-to-indentation ()
    (interactive)
    (indent-for-tab-command)
    (let ((point-of-indentation
           (save-excursion
             (back-to-indentation)
             (point))));      (skip-chars-forward "\s " point-of-indentation)
	  ))
  (define-key js2-mode-map "\C-i" 'indent-and-back-to-indentation)

  (define-key js2-mode-map "\C-m" nil)
  (add-hook 'js2-mode-hook
          '(lambda ()
             (setq js2-basic-offset 4)))
  (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode)))



;; MMM-mode
;(require 'mmm-auto)
;(setq mmm-global-mode 'maybe)
;(setq mmm-submode-decoration-level 2)
;(set-face-bold-p 'mmm-default-submode-face t)
;(set-face-background 'mmm-default-submode-face "black")
;(mmm-add-classes
; '((embedded-css
;    :submode css-mode
;    :front "<style[^>]*>"
;    :back "</style>")))
;(mmm-add-mode-ext-class nil "\\.html\\'" 'embedded-css)

;; Subversion
;(autoload 'svn-status "psvn" nil t)




(put 'upcase-region 'disabled nil)


(put 'set-goal-column 'disabled nil)
