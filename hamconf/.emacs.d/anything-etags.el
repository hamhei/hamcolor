<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: anything-etags.el</title><link rel="alternate" type="application/wiki" title="Edit this page" href="http://www.emacswiki.org/emacs?action=edit;id=anything-etags.el" /><link type="text/css" rel="stylesheet" href="/emacs/wiki.css" /><meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: anything-etags.el" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=anything-etags.el" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/emacs/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/emacs/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/emacs/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for anything-etags.el only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=anything-etags.el" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/></head><body class="http://www.emacswiki.org/emacs"><div class="header"><a class="logo" href="http://www.emacswiki.org/emacs/%e3%82%b5%e3%82%a4%e3%83%88%e3%83%9e%e3%83%83%e3%83%97"><img class="logo" src="/emacs_logo.png" alt="[Home]" /></a><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/%e3%82%b5%e3%82%a4%e3%83%88%e3%83%9e%e3%83%83%e3%83%97">サイトマップ</a> <a class="local" href="http://www.emacswiki.org/emacs/%e6%9b%b4%e6%96%b0%e5%b1%a5%e6%ad%b4">更新履歴</a> <a class="local" href="http://www.emacswiki.org/emacs/%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%b9">ニュース</a> <a class="local" href="http://www.emacswiki.org/emacs/%ef%bc%a5%ef%bd%8c%ef%bd%89%ef%bd%93%ef%bd%90%e3%82%bb%e3%82%af%e3%82%b7%e3%83%a7%e3%83%b3">Ｅｌｉｓｐセクション</a> <a class="local" href="http://www.emacswiki.org/emacs/%e5%88%a9%e7%94%a8%e6%89%8b%e5%bc%95">利用手引</a> </span>
<!-- Google CSE Search Box Begins  -->
<form class="tiny" action="http://www.google.com/cse" id="searchbox_004774160799092323420:6-ff2s0o6yi"><p>
<input type="hidden" name="cx" value="004774160799092323420:6-ff2s0o6yi" />
<input type="text" name="q" size="25" />
<input type="submit" name="sa" value="Search" />
</p></form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_004774160799092323420%3A6-ff2s0o6yi"></script>
<!-- Google CSE Search Box Ends -->
<h1><a title="Click to search for references to this page" rel="nofollow" href="http://www.google.com/cse?cx=004774160799092323420:6-ff2s0o6yi&amp;q=%22anything-etags.el%22">anything-etags.el</a></h1></div><div class="wrapper"><div class="content browse"><p class="download"><a href="download/anything-etags.el">Download</a></p><pre class="code"><span class="linecomment">;;; anything-etags.el --- Etags anything.el interface</span>

<span class="linecomment">;; Filename: anything-etags.el</span>
<span class="linecomment">;; Description: Etags anything.el interface</span>
<span class="linecomment">;; Author: Kenichirou Oyama &lt;k1lowxb@gmail.com&gt;</span>
<span class="linecomment">;;         Andy Stewart &lt;lazycat.manatee@gmail.com&gt;</span>
<span class="linecomment">;;         rubikitch &lt;rubikitch@ruby-lang.org&gt;</span>
<span class="linecomment">;;         Thierry Volpiatto &lt;thierry.volpiatto@gmail.com&gt;</span>
<span class="linecomment">;; Maintainer: Kenichirou Oyama &lt;k1lowxb@gmail.com&gt;</span>
<span class="linecomment">;; Copyright (C) 2009, Kenichirou Oyama, all rights reserved.</span>
<span class="linecomment">;; Copyright (C) 2009, Andy Stewart, all rights reserved.</span>
<span class="linecomment">;; Copyright (C) 2009, rubikitch, all rights reserved.</span>
<span class="linecomment">;; Copyright (C) 2009, Thierry Volpiatto, all rights reserved.</span>
<span class="linecomment">;; Created: 2009-01-29 18:19:38</span>
<span class="linecomment">;; Version: 1.1.6</span>
<span class="linecomment">;; URL: http://www.emacswiki.org/emacs/download/anything-etags.el</span>
<span class="linecomment">;; Keywords: anything, etags</span>
<span class="linecomment">;; Compatibility: GNU Emacs 22 ~ 23</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Features that might be required by this library:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `anything' `etags'</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; This file is NOT part of GNU Emacs</span>

<span class="linecomment">;;; License</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; This program is free software; you can redistribute it and/or modify</span>
<span class="linecomment">;; it under the terms of the GNU General Public License as published by</span>
<span class="linecomment">;; the Free Software Foundation; either version 3, or (at your option)</span>
<span class="linecomment">;; any later version.</span>

<span class="linecomment">;; This program is distributed in the hope that it will be useful,</span>
<span class="linecomment">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<span class="linecomment">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span>
<span class="linecomment">;; GNU General Public License for more details.</span>

<span class="linecomment">;; You should have received a copy of the GNU General Public License</span>
<span class="linecomment">;; along with this program; see the file COPYING.  If not, write to</span>
<span class="linecomment">;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth</span>
<span class="linecomment">;; Floor, Boston, MA 02110-1301, USA.</span>

<span class="linecomment">;;; Commentary:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; This package use `anything' as a interface to find tag with Etags.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; You can also make this package integrate with `anything',</span>
<span class="linecomment">;; just setup like below:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (setq anything-sources</span>
<span class="linecomment">;;       '(anything-etags-c-source-etags-select</span>
<span class="linecomment">;;        ))</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; If you want to use tag file in cache directory</span>
<span class="linecomment">;; instead current directory, example you have a</span>
<span class="linecomment">;; tag file in directory "~/MyEmacs/", and you want</span>
<span class="linecomment">;; always search tag in this directory.</span>
<span class="linecomment">;; You can setup like below:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (setq anything-etags-enable-tag-file-dir-cache t)</span>
<span class="linecomment">;; (setq anything-etags-cache-tag-file-dir "~/MyEmacs/")</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;; Installation:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Put anything-etags.el to your load-path.</span>
<span class="linecomment">;; The load-path is usually ~/elisp/.</span>
<span class="linecomment">;; It's set in your ~/.emacs like this:</span>
<span class="linecomment">;; (add-to-list 'load-path (expand-file-name "~/elisp"))</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; And the following to your ~/.emacs startup file.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (require 'anything-etags)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; It is good to use anything-match-plugin.el to narrow candidates.</span>
<span class="linecomment">;; http://www.emacswiki.org/cgi-bin/wiki/download/anything-match-plugin</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; No need more.</span>

<span class="linecomment">;;; Commands:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Below are complete command list:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  `anything-etags-select'</span>
<span class="linecomment">;;    Tag jump using etags and `anything'.</span>
<span class="linecomment">;;  `anything-etags-select-from-here'</span>
<span class="linecomment">;;    Tag jump with current symbol using etags and `anything'.</span>
<span class="linecomment">;;  `anything-etags-enable-cache'</span>
<span class="linecomment">;;    Enable use tag file in cache directory.</span>
<span class="linecomment">;;  `anything-etags-disable-cache'</span>
<span class="linecomment">;;    Disable use tag file in cache directory.</span>
<span class="linecomment">;;  `anything-etags-toggle-cache'</span>
<span class="linecomment">;;    Toggle tag file cache directory status.</span>
<span class="linecomment">;;  `anything-etags-generate-tag-buffer'</span>
<span class="linecomment">;;    Do nothing. Only for compatibility.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;; Customizable Options:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Below are customizable option list:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  `anything-etags-tag-file-name'</span>
<span class="linecomment">;;    Etags tag file name.</span>
<span class="linecomment">;;    default = "TAGS"</span>
<span class="linecomment">;;  `anything-etags-enable-tag-file-dir-cache'</span>
<span class="linecomment">;;    Whether use Etags tag file in cache directory.</span>
<span class="linecomment">;;    default = nil</span>
<span class="linecomment">;;  `anything-etags-cache-tag-file-dir'</span>
<span class="linecomment">;;    The cache directory that storage Etags tag file.</span>
<span class="linecomment">;;    default = nil</span>
<span class="linecomment">;;  `anything-etags-tag-file-search-limit'</span>
<span class="linecomment">;;    The limit level of directory that search tag file.</span>
<span class="linecomment">;;    default = 10</span>


<span class="linecomment">;;; Change log:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2010/03/27</span>
<span class="linecomment">;;   * rubikitch:</span>
<span class="linecomment">;;      * Fix a bug of handling same tags. I tested in Ruby code.</span>
<span class="linecomment">;;      * With that, slight changes in display.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/04/04</span>
<span class="linecomment">;;   * Thierry Volpiatto:</span>
<span class="linecomment">;;      * Regexp change in `anything-c-etags-get-line'.</span>
<span class="linecomment">;;      </span>
<span class="linecomment">;; 2009/03/28</span>
<span class="linecomment">;;   * Thierry Volpiatto:</span>
<span class="linecomment">;;      * code cleanup.</span>
<span class="linecomment">;;   * rubikitch:</span>
<span class="linecomment">;;      * More beautiful line. (only show the line)</span>
<span class="linecomment">;;      * Show TAGS file name in header.</span>
<span class="linecomment">;;      </span>
<span class="linecomment">;; 2009/03/23</span>
<span class="linecomment">;;   * rubikitch:</span>
<span class="linecomment">;;      * Use `expand-file-name' instead of `concat' to make full path.</span>
<span class="linecomment">;;      * Optionally highlight in persistent-action.</span>
<span class="linecomment">;;      * Fix doc.</span>
<span class="linecomment">;;      </span>
<span class="linecomment">;; 2009/03/19</span>
<span class="linecomment">;;   * Kenichirou Oyama:</span>
<span class="linecomment">;;      * Fix bug.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/03/19</span>
<span class="linecomment">;;   * Kenichirou Oyama:</span>
<span class="linecomment">;;      * Use `etags-goto-tag-location'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/03/18</span>
<span class="linecomment">;;   * Kenichirou Oyama:</span>
<span class="linecomment">;;      * Applied SUGAWARA's patch to make `anything-etags-generate-tag-buffer' to user command.</span>
<span class="linecomment">;;      * makes `anything-etags-generate-tag-buffer' to user command.</span>
<span class="linecomment">;;      * Fix doc.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/03/18</span>
<span class="linecomment">;;   * Kenichirou Oyama:</span>
<span class="linecomment">;;      * Applied SUGAWARA's patch to make multi TAGS buffer.</span>
<span class="linecomment">;;      * use separete tag buffer for each tag file.</span>
<span class="linecomment">;;      * create tag buffer only first visit time.</span>
<span class="linecomment">;;      * Fix doc.</span>
<span class="linecomment">;;      * Fix bug.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/03/07</span>
<span class="linecomment">;;   * rubikitch:</span>
<span class="linecomment">;;      * More kind error message.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/07</span>
<span class="linecomment">;;   * rubikitch:</span>
<span class="linecomment">;;      * Use `anything-quit-if-no-candidate' and</span>
<span class="linecomment">;;        `anything-execute-action-at-once-if-one' to suppress</span>
<span class="linecomment">;;        opening unneeded *anything* window.</span>
<span class="linecomment">;;      * New command `anything-etags-select-from-here'.</span>
<span class="linecomment">;;      * Suggestion of anything-match-plugin.el.</span>
<span class="linecomment">;;      * Fix bug.</span>
<span class="linecomment">;;      * Refactor code.</span>
<span class="linecomment">;;   * Andy Stewart</span>
<span class="linecomment">;;      * Remove option `anything-etags-enable-initial-pattern'</span>
<span class="linecomment">;;        not necessary.</span>
<span class="linecomment">;;      * Fix doc.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/02/01</span>
<span class="linecomment">;;   * Andy Stewart:</span>
<span class="linecomment">;;      * Applied IMAKADO's patch to fix the "infinite loop" bug</span>
<span class="linecomment">;;        when TAGS file in more than two levels upper directory.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/30</span>
<span class="linecomment">;;   * Andy Stewart:</span>
<span class="linecomment">;;      * Remove file patch that haven't contain tag information</span>
<span class="linecomment">;;        from tag buffer.</span>
<span class="linecomment">;;      * Don't show \x01 in *anything* buffer, beautiful &lt;line&gt;.</span>
<span class="linecomment">;;      * Fix bug.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/30</span>
<span class="linecomment">;;   * rubikitch:</span>
<span class="linecomment">;;      * Fix bug.</span>
<span class="linecomment">;;      * Refactor code.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/29</span>
<span class="linecomment">;;   * Andy Stewart:</span>
<span class="linecomment">;;      * Refactor source code and make it more readability.</span>
<span class="linecomment">;;      * Fix bug.</span>
<span class="linecomment">;;      * Fix doc.</span>
<span class="linecomment">;;      * Make user can use function `anything-etags-generate-tag-buffer'</span>
<span class="linecomment">;;        to generate tag buffer when startup.</span>
<span class="linecomment">;;        Then user doesn't need wait `anything' when first use.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/28</span>
<span class="linecomment">;;   * Kenichirou:</span>
<span class="linecomment">;;      * Patch from Andy Stewart.</span>
<span class="linecomment">;;        Refactor source code and speed up for</span>
<span class="linecomment">;;        `anything-c-source-etags-select' user.</span>
<span class="linecomment">;;      * New variable `anything-etags-enable-tag-file-dir-cache'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2009/01/29</span>
<span class="linecomment">;;   * Kenichirou:</span>
<span class="linecomment">;;      * First released.</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Acknowledgements:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  ThierryVolpiatto for advice and highlight idea.</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; TODO</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;      Highlight keyword and name.</span>
<span class="linecomment">;;      Highlight match type.</span>
<span class="linecomment">;;      Multiline: with filename.</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Require</span>
(require 'anything)
(require 'etags)
(require 'anything-match-plugin nil t)  <span class="linecomment">;optional</span>
(require 'anything-config nil t)        <span class="linecomment">;optional</span>

<span class="linecomment">;;; Code:</span>

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Customize ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defgroup anything-etags nil
  "<span class="quote">Etags anything.el interface.</span>"
  :prefix "<span class="quote">anything-etags-</span>"
  :group 'convenience)

(defcustom anything-etags-tag-file-name "<span class="quote">TAGS</span>"
  "<span class="quote">Etags tag file name.</span>"
  :type 'string
  :group 'anything-etags)

(defcustom anything-etags-enable-tag-file-dir-cache nil
  "<span class="quote">Whether use Etags tag file in cache directory.
If `non-nil', try to use `anything-etags-cache-tag-file-dir'.
Default is nil.</span>"
  :type 'boolean
  :group 'anything-etags)

(defcustom anything-etags-cache-tag-file-dir nil
  "<span class="quote">The cache directory that storage Etags tag file.
This value just use when you setup option
`anything-etags-enable-tag-file-dir-cache' with `non-nil'.
If is nil try to find tag file in current directory.
Default is nil.</span>"
  :type 'string-match
  :group 'anything-etags)

(defcustom anything-etags-tag-file-search-limit 10
  "<span class="quote">The limit level of directory that search tag file.
Don't search tag file deeply if outside this value.
This value only use when option
`anything-etags-enable-tag-file-dir-cache' is nil.</span>"
  :type 'number
  :group 'anything-etags)

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Variable ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defvar anything-etags-tag-file-dir nil
  "<span class="quote">Etags file directory.</span>")

(defvar anything-etags-tag-buffer nil
  "<span class="quote">Etags tag buffer.</span>")

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Interactive Functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defun anything-etags-select (&optional symbol-name)
  "<span class="quote">Tag jump using etags and `anything'.
If SYMBOL-NAME is non-nil, jump tag position with SYMBOL-NAME.</span>"
  (interactive)
  (let* ((initial-pattern               <span class="linecomment">; string or nil</span>
          (if symbol-name
              (concat "<span class="quote">\\_&lt;</span>" (regexp-quote symbol-name) "<span class="quote">\\_&gt;</span>"
                      (if (featurep 'anything-match-plugin) "<span class="quote"> </span>"))))
         (anything-quit-if-no-candidate
          (lambda () (if symbol-name
                         (message "<span class="quote">No TAGS file or containing `%s'</span>" symbol-name)
                       (message "<span class="quote">No TAGS file</span>"))))
         (anything-execute-action-at-once-if-one t))
    (anything '(anything-c-source-etags-select)
              <span class="linecomment">;; Initialize input with current symbol</span>
              initial-pattern "<span class="quote">Find Tag: </span>" nil)))

(defun anything-etags-select-from-here ()
  "<span class="quote">Tag jump with current symbol using etags and `anything'.</span>"
  (interactive)
  (anything-etags-select (thing-at-point 'symbol)))

(defun anything-etags-enable-cache ()
  "<span class="quote">Enable use tag file in cache directory.</span>"
  (interactive)
  (setq anything-etags-enable-tag-file-dir-cache t)
  (message "<span class="quote">Enable etags file cache directory.</span>"))

(defun anything-etags-disable-cache ()
  "<span class="quote">Disable use tag file in cache directory.</span>"
  (interactive)
  (setq anything-etags-enable-tag-file-dir-cache nil)
  (message "<span class="quote">Disable etags file cache directory.</span>"))

(defun anything-etags-toggle-cache ()
  "<span class="quote">Toggle tag file cache directory status.</span>"
  (interactive)
  (if anything-etags-enable-tag-file-dir-cache
      (anything-etags-disable-cache)
    (anything-etags-enable-cache)))

(defun anything-etags-generate-tag-buffer ()
  "<span class="quote">Do nothing. Only for compatibility.</span>"
  (interactive))

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Utilities Functions ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
(defun anything-etags-get-tag-file ()
  "<span class="quote">Get Etags tag file.</span>"
  (cond (anything-etags-enable-tag-file-dir-cache
         <span class="linecomment">;; Get tag-file form directory `anything-etags-cache-tag-file-dir'</span>
         <span class="linecomment">;; or `default-directory'.</span>
         (setq anything-etags-tag-file-dir "<span class="quote"></span>") <span class="linecomment">;set tag file directory</span>
         (expand-file-name anything-etags-tag-file-name
                           (or anything-etags-cache-tag-file-dir default-directory)))
        (t
         <span class="linecomment">;; Get tag file from `default-directory' or upper directory.</span>
         (let ((current-dir (anything-etags-find-tag-file default-directory)))
           <span class="linecomment">;; Return nil if not find tag file.</span>
           (when current-dir
             (setq anything-etags-tag-file-dir current-dir) <span class="linecomment">;set tag file directory</span>
             (expand-file-name anything-etags-tag-file-name current-dir))))))

(defun anything-etags-find-tag-file (current-dir)
  "<span class="quote">Find tag file.
Try to find tag file in upper directory if haven't found in CURRENT-DIR.</span>"
  (flet ((file-exists? (dir)
           (let ((tag-path (expand-file-name anything-etags-tag-file-name dir)))
             (and (stringp tag-path)
                  (file-exists-p tag-path)
                  (file-readable-p tag-path)))))
    (loop with count = 0
       until (file-exists? current-dir)
       <span class="linecomment">;; Return nil if outside the value of</span>
       <span class="linecomment">;; `anything-etags-tag-file-search-limit'.</span>
       if (= count anything-etags-tag-file-search-limit)
       do (return nil)
       <span class="linecomment">;; Or search upper directories.</span>
       else
       do (incf count)
         (setq current-dir (expand-file-name (concat current-dir "<span class="quote">../</span>")))
       finally return current-dir)))

(defun anything-etags-create-buffer ()
  "<span class="quote">Create buffer from tag file.</span>"
  (anything-aif (anything-etags-get-tag-file)
      (with-current-buffer (anything-candidate-buffer 'global)
        (set-syntax-table (with-current-buffer anything-current-buffer
                            (syntax-table)))
        (insert-file-contents it))
    (message "<span class="quote">Can't find tag file: %s</span>" it)))
          

(defun anything-etags-find-tag (candidate)
  "<span class="quote">Find tag that match CANDIDATE from `anything-etags-tag-buffer'.
And switch buffer and jump tag position..</span>"
  (setq candidate (replace-regexp-in-string "<span class="quote"> +\177</span>" "<span class="quote">\177</span>" candidate))
  (catch 'failed
    (let (file-name tag tag-info)
      (set-buffer (anything-candidate-buffer))
      <span class="linecomment">;; Get tag.</span>
      (goto-char (point-min))
      (search-forward candidate nil t)
      (beginning-of-line)
      (unless (setq tag-info (etags-snarf-tag))
        (message "<span class="quote">failed</span>")
        (throw 'failed nil))
      (re-search-backward "<span class="quote">\x0c\n\\(.+\\),[0-9]+\n</span>" nil t)
      (setq file-name (and (match-string 1)
                           (expand-file-name (match-string 1)
                                             anything-etags-tag-file-dir)))
      (unless (and file-name
                   (file-exists-p file-name))
        (message "<span class="quote">Can't find target file: %s</span>" file-name)
        (throw 'failed nil))
      <span class="linecomment">;; Jump to tag position when</span>
      <span class="linecomment">;; tag file is valid.</span>
      (find-file file-name)
      (etags-goto-tag-location tag-info))))

<span class="linecomment">;;; Rationale: ~/memo/junk/2010-03-27-053504.anything-etags-test.rb</span>
(defun* anything-c-etags-get-line (s e &optional (width (- (window-width) 6)))
  (let ((substr (buffer-substring s e)))
    (unless (string-match "<span class="quote">^/.*/.[^,]*\\|^\x0c\\|^\\&lt;.*/.[^,]*</span>" substr)
      (anything-aif (string-match "<span class="quote">\177</span>" substr)
          (concat (substring substr 0 (match-beginning 0))
                  (or (ignore-errors (make-string (- width (length substr)) ? )) "<span class="quote"></span>")
                  (substring substr (match-beginning 0)))
        substr))))

(defun anything-c-etags-goto-location (candidate)
  (ring-insert find-tag-marker-ring (point-marker))
  (anything-etags-find-tag candidate)
  (when (and anything-in-persistent-action
             (fboundp 'anything-match-line-color-current-line))
    (anything-match-line-color-current-line)))

(defun anything-c-source-etags-header-name (x)
  (concat "<span class="quote">Etags in </span>"
          (with-current-buffer anything-current-buffer
            (anything-etags-get-tag-file))))

(defvar anything-c-source-etags-select
  '((name . "<span class="quote">Etags</span>")
    (header-name . anything-c-source-etags-header-name)
    (init . anything-etags-create-buffer)
    (candidates-in-buffer)
    (get-line . anything-c-etags-get-line)
    (action ("<span class="quote">Goto the location</span>" . anything-c-etags-goto-location))))

(provide 'anything-etags)

<span class="linecomment">;; How to save (DO NOT REMOVE!!)</span>
<span class="linecomment">;; (emacswiki-post "anything-etags.el")</span>
<span class="linecomment">;;; anything-etags.el ends here</span>

<span class="linecomment">;;; LocalWords:  etags Kenichirou Oyama MyEmacs Refactor IMAKADO's plugin</span>
<span class="linecomment">;;; LocalWords:  Multiline featurep</span></span></pre></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/%e3%82%b5%e3%82%a4%e3%83%88%e3%83%9e%e3%83%83%e3%83%97">サイトマップ</a> <a class="local" href="http://www.emacswiki.org/emacs/%e6%9b%b4%e6%96%b0%e5%b1%a5%e6%ad%b4">更新履歴</a> <a class="local" href="http://www.emacswiki.org/emacs/%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%b9">ニュース</a> <a class="local" href="http://www.emacswiki.org/emacs/%ef%bc%a5%ef%bd%8c%ef%bd%89%ef%bd%93%ef%bd%90%e3%82%bb%e3%82%af%e3%82%b7%e3%83%a7%e3%83%b3">Ｅｌｉｓｐセクション</a> <a class="local" href="http://www.emacswiki.org/emacs/%e5%88%a9%e7%94%a8%e6%89%8b%e5%bc%95">利用手引</a> </span><span class="translation bar"><br />  <a class="translation new" rel="nofollow" href="http://www.emacswiki.org/emacs?action=translate;id=anything-etags.el;missing=de_es_fr_it_ja_ko_pt_ru_se_zh">Add Translation</a></span><span class="edit bar"><br /> <a class="edit" accesskey="e" title="Click to edit this page" rel="nofollow" href="http://www.emacswiki.org/emacs?action=edit;id=anything-etags.el">Edit this page</a> <a class="history" rel="nofollow" href="http://www.emacswiki.org/emacs?action=history;id=anything-etags.el">View other revisions</a> <a class="admin" rel="nofollow" href="http://www.emacswiki.org/emacs?action=admin;id=anything-etags.el">Administration</a></span><span class="time"><br /> Last edited 2010-03-26 21:21 UTC by <a class="author" title="from 124-144-92-34.rev.home.ne.jp" href="http://www.emacswiki.org/emacs/rubikitch">rubikitch</a> <a class="diff" rel="nofollow" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=anything-etags.el">(diff)</a></span><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
