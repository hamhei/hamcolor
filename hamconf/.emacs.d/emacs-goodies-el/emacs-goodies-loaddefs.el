;;; emacs-goodies-loaddefs.el
;;  autoloads generated upon installation of the emacs-goodies-el package

;;;### (autoloads (all) "all" "all.el" (19366 23256))
;;; Generated autoloads from all.el

(autoload 'all "all" "\
Show all lines in the current buffer containing a match for REGEXP.

If a match spreads across multiple lines, all those lines are shown.

Each line is displayed with NLINES lines before and after, or -NLINES
before if NLINES is negative.
NLINES defaults to `list-matching-lines-default-context-lines'.
Interactively it is the prefix arg.

The lines are shown in a buffer named `*All*'.
Any changes made in that buffer will be propagated to this buffer.

\(fn REGEXP &optional NLINES)" t nil)

;;;***

;;;### (autoloads (apache-mode) "apache-mode" "apache-mode.el" (19366
;;;;;;  23256))
;;; Generated autoloads from apache-mode.el

(autoload 'apache-mode "apache-mode" "\
Major mode for editing Apache configuration files.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.htaccess\\'"   . apache-mode))
(add-to-list 'auto-mode-alist '("httpd\\.conf\\'"  . apache-mode))
(add-to-list 'auto-mode-alist '("srm\\.conf\\'"    . apache-mode))
(add-to-list 'auto-mode-alist '("access\\.conf\\'" . apache-mode))
(add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . apache-mode))

;;;***

;;;### (autoloads (ascii-off ascii-on ascii-display ascii-customize)
;;;;;;  "ascii" "ascii.el" (19366 23256))
;;; Generated autoloads from ascii.el

(autoload 'ascii-customize "ascii" "\
Customize ASCII options.

\(fn)" t nil)

(autoload 'ascii-display "ascii" "\
Toggle ASCII code display.

If ARG is null, toggle ASCII code display.
If ARG is a number and is greater than zero, turn on display; otherwise, turn
off display.
If ARG is anything else, turn on display.

\(fn &optional ARG)" t nil)

(autoload 'ascii-on "ascii" "\
Turn on ASCII code display.

\(fn)" t nil)

(autoload 'ascii-off "ascii" "\
Turn off ASCII code display.

\(fn)" t nil)

;;;***

;;;### (autoloads (bar-cursor-change bar-cursor-mode) "bar-cursor"
;;;;;;  "bar-cursor.el" (19366 23256))
;;; Generated autoloads from bar-cursor.el

(autoload 'bar-cursor-mode "bar-cursor" "\
Toggle use of variable `bar-cursor-mode'.
This quasi-minor mode changes cursor to a bar cursor in insert mode,
and a block cursor in overwrite mode.  It may only be turned on and
off globally, not on a per-buffer basis (hence the quasi- designation).

Optional ARG turns mode on if ARG is a positive integer.

\(fn &optional ARG)" t nil)

(autoload 'bar-cursor-change "bar-cursor" "\
Enable or disable advice based on value of variable `bar-cursor-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (boxquote-unbox boxquote-unbox-region boxquote-fill-paragraph
;;;;;;  boxquote-kill boxquote-narrow-to-boxquote-content boxquote-narrow-to-boxquote
;;;;;;  boxquote-text boxquote-where-is boxquote-shell-command boxquote-describe-key
;;;;;;  boxquote-describe-variable boxquote-describe-function boxquote-boxquote
;;;;;;  boxquote-paragraph boxquote-defun boxquote-yank boxquote-kill-ring-save
;;;;;;  boxquote-insert-buffer boxquote-insert-file boxquote-buffer
;;;;;;  boxquote-region boxquote-title) "boxquote" "boxquote.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from boxquote.el

(autoload 'boxquote-title "boxquote" "\
Set the title of the current boxquote to TITLE.

If TITLE is an empty string the title is removed. Note that the title will
be formatted using `boxquote-title-format'.

\(fn TITLE)" t nil)

(autoload 'boxquote-region "boxquote" "\
Draw a box around the left hand side of a region bounding START and END.

\(fn START END)" t nil)

(autoload 'boxquote-buffer "boxquote" "\
Apply `boxquote-region' to a whole buffer.

\(fn)" t nil)

(autoload 'boxquote-insert-file "boxquote" "\
Insert the contents of a file, boxed with `boxquote-region'.

If `boxquote-title-files' is non-nil the boxquote will be given a title that
is the result of applying `boxquote-file-title-function' to FILENAME.

\(fn FILENAME)" t nil)

(autoload 'boxquote-insert-buffer "boxquote" "\
Insert the contents of a buffer, boxes with `boxquote-region'.

If `boxquote-title-buffers' is non-nil the boxquote will be given a title that
is the result of applying `boxquote-buffer-title-function' to BUFFER.

\(fn BUFFER)" t nil)

(autoload 'boxquote-kill-ring-save "boxquote" "\
Like `kill-ring-save' but remembers a title if possible.

The title is acquired by calling `boxquote-kill-ring-save-title'. The title
will be used by `boxquote-yank'.

\(fn)" t nil)

(autoload 'boxquote-yank "boxquote" "\
Do a `yank' and box it in with `boxquote-region'.

If the yanked entry was placed on the kill ring with
`boxquote-kill-ring-save' the resulting boxquote will be titled with
whatever `boxquote-kill-ring-save-title' returned at the time.

\(fn)" t nil)

(autoload 'boxquote-defun "boxquote" "\
Apply `boxquote-region' the current defun.

\(fn)" t nil)

(autoload 'boxquote-paragraph "boxquote" "\
Apply `boxquote-region' to the current paragraph.

\(fn)" t nil)

(autoload 'boxquote-boxquote "boxquote" "\
Apply `boxquote-region' to the current boxquote.

\(fn)" t nil)

(autoload 'boxquote-describe-function "boxquote" "\
Call `describe-function' and boxquote the output into the current buffer.

\(fn)" t nil)

(autoload 'boxquote-describe-variable "boxquote" "\
Call `describe-variable' and boxquote the output into the current buffer.

\(fn)" t nil)

(autoload 'boxquote-describe-key "boxquote" "\
Call `describe-key' and boxquote the output into the current buffer.

If the call to this command is prefixed with \\[universal-argument] you will also be
prompted for a buffer. The key defintion used will be taken from that buffer.

\(fn KEY)" t nil)

(autoload 'boxquote-shell-command "boxquote" "\
Call `shell-command' with COMMAND and boxquote the output.

\(fn COMMAND)" t nil)

(autoload 'boxquote-where-is "boxquote" "\
Call `where-is' with DEFINITION and boxquote the result.

\(fn DEFINITION)" t nil)

(autoload 'boxquote-text "boxquote" "\
Insert TEXT, boxquoted.

\(fn TEXT)" t nil)

(autoload 'boxquote-narrow-to-boxquote "boxquote" "\
Narrow the buffer to the current boxquote.

\(fn)" t nil)

(autoload 'boxquote-narrow-to-boxquote-content "boxquote" "\
Narrow the buffer to the content of the current boxquote.

\(fn)" t nil)

(autoload 'boxquote-kill "boxquote" "\
Kill the boxquote and its contents.

\(fn)" t nil)

(autoload 'boxquote-fill-paragraph "boxquote" "\
Perform a `fill-paragraph' inside a boxquote.

\(fn ARG)" t nil)

(autoload 'boxquote-unbox-region "boxquote" "\
Remove a box created with `boxquote-region'.

\(fn START END)" t nil)

(autoload 'boxquote-unbox "boxquote" "\
Remove the boxquote that contains `point'.

\(fn)" t nil)

;;;***

;;;### (autoloads (browse-huge-tar-copy-file-at-point browse-huge-tar-view-file-at-point
;;;;;;  browse-huge-tar-file) "browse-huge-tar" "browse-huge-tar.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from browse-huge-tar.el

(autoload 'browse-huge-tar-file "browse-huge-tar" "\
Create a buffer containing a listing of FILENAME as a tar file.

\(fn FILENAME)" t nil)

(autoload 'browse-huge-tar-view-file-at-point "browse-huge-tar" "\
Extract the file at the point into a buffer for viewing.

\(fn)" t nil)

(autoload 'browse-huge-tar-copy-file-at-point "browse-huge-tar" "\
Extract the file at the point and copy to a local file OUTFILE.
This requires the value of `shell-file-name' to support redirection using \">\".

\(fn OUTFILE)" t nil)

;;;***

;;;### (autoloads (browse-kill-ring browse-kill-ring-default-keybindings)
;;;;;;  "browse-kill-ring" "browse-kill-ring.el" (19366 23256))
;;; Generated autoloads from browse-kill-ring.el

(autoload 'browse-kill-ring-default-keybindings "browse-kill-ring" "\
Set up M-y (`yank-pop') so that it can invoke `browse-kill-ring'.
Normally, if M-y was not preceeded by C-y, then it has no useful
behavior.  This function sets things up so that M-y will invoke
`browse-kill-ring'.

\(fn)" t nil)

(autoload 'browse-kill-ring "browse-kill-ring" "\
Display items in the `kill-ring' in another buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-select) "color-theme" "color-theme.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from color-theme.el

(autoload 'color-theme-select "color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ctypes-read-file ctypes-auto-parse-mode ctypes-file
;;;;;;  ctypes-dir ctypes-tags ctypes-all-buffers ctypes-buffer ctypes-define-type-in-mode
;;;;;;  ctypes-define-type) "ctypes" "ctypes.el" (19366 23256))
;;; Generated autoloads from ctypes.el

(autoload 'ctypes-define-type "ctypes" "\
Add a new TYPE to current major mode and inform font-lock.

When preceded by C-u the display is not updated.

Return non-nil if the type was not known before.

\(fn TYPE &optional DELAY-ACTION MODE)" t nil)

(autoload 'ctypes-define-type-in-mode "ctypes" "\
Add TYPE to major mode MODE and inform font-lock.

When preceded by C-u the display is not updated.

\(This function is designed for interactive use, please call
`ctypes-define-type' from Lisp programs.)

\(fn TYPE &optional DELAY-ACTION MODE)" t nil)

(autoload 'ctypes-buffer "ctypes" "\
Search for types in buffer, inform font-lock if any is found.

When preceded by C-u the action is not performed.

Return non-nil if new types are found.

\(fn &optional BUF DELAY-ACTION MODE)" t nil)

(autoload 'ctypes-all-buffers "ctypes" "\
Search for types in all buffers, inform font-lock about all discoveries.

When preceded by C-u the display is not updated.

Return non-nil if new types are found.

\(fn &optional DELAY-ACTION)" t nil)

(autoload 'ctypes-tags "ctypes" "\
Search for types in files in the visited TAGS table.
Should no tags table be visited, the user will be prompted for a new.

When preceded by C-u the display is not updated.

Return non-nil if new types are found.

\(fn &optional DELAY-ACTION)" t nil)

(autoload 'ctypes-dir "ctypes" "\
Search for types in files in a directory hierarchy.

See variable `ctypes-dir-read-file' for a description of which files
are opened during scanning, and how you can change the behavior.

When preceded by C-u the display is not updated.

Return non-nil if new types are found.

\(fn &optional DIR DELAY-ACTION)" t nil)

(autoload 'ctypes-file "ctypes" "\
Search for types in file FILE.
Should FILE not be loaded it is read into a temporary buffer.

Return mode of file, if new types was found.

\(fn FILE &optional DELAY-ACTION)" t nil)

(autoload 'ctypes-auto-parse-mode "ctypes" "\
Toggle CTypes auto parse mode; search all new buffers for types.
With arg, turn types Auto Mode on if and only if arg is positive.

This a global minor mode, it does not have a private keymap, nor does
it add itself to the mode line.

Place the following in your startup file to enable this feature in
future sessions:

    (require 'ctypes)
    (ctypes-auto-parse-mode 1)

When activated, the functions in the hook `ctypes-auto-parse-mode-hook'
is called with no args.

\(fn &optional ARG)" t nil)

(autoload 'ctypes-read-file "ctypes" "\
Load types previously saved with `ctypes-write-file'.
The name of the file is given by the optional argument FILE.
Should no file name be given the value of the variable `ctypes-file-name'
is used.

Please note that the types read will be added to the current types.

When preceded by C-u the display is not updated.

The third argument, NO-ERROR, determines whether or not we should
raise an error if there should be any problem loading the file.

Should the fourth argument, QUIETLY, be non-nil no messages are
generated when the file is loaded.

Return non-nil if new types are found.

\(fn &optional FILE DELAY-ACTION NO-ERROR QUIETLY)" t nil)

;;;***

;;;### (autoloads (dedicated-mode) "dedicated" "dedicated.el" (19366
;;;;;;  23256))
;;; Generated autoloads from dedicated.el

(autoload 'dedicated-mode "dedicated" "\
Toggle dedicated minor mode.
With ARG, turn minor mode on if ARG is positive, off otherwise.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (df) "df" "df.el" (19366 23256))
;;; Generated autoloads from df.el

(autoload 'df "df" "\
Enables display of space left on any PARTITION in mode-lines.
This display updates automatically every `df-refresh' seconds.

\(fn &optional PARTITION)" t nil)

;;;***

;;;### (autoloads (diminished-modes diminish-undo diminish) "diminish"
;;;;;;  "diminish.el" (19366 23256))
;;; Generated autoloads from diminish.el

(autoload 'diminish "diminish" "\
Diminish mode-line display of minor mode MODE to TO-WHAT (default \"\").

Interactively, enter (with completion) the name of any minor mode, followed
on the next line by what you want it diminished to (default empty string).
The response to neither prompt should be quoted.  However, in Lisp code,
both args must be quoted, the first as a symbol, the second as a string,
as in (diminish 'jiggle-mode \" Jgl\").

The mode-line displays of minor modes usually begin with a space, so
the modes' names appear as separate words on the mode line.  However, if
you're having problems with a cramped mode line, you may choose to use single
letters for some modes, without leading spaces.  Capitalizing them works
best; if you then diminish some mode to \"X\" but have abbrev-mode enabled as
well, you'll get a display like \"AbbrevX\".  This function prepends a space
to TO-WHAT if it's > 1 char long & doesn't already begin with a space.

If ANNOTATE-FLAG is nil or omitted, the normal case in interactive use, then
the variable `diminished-minor-modes' will be modified to reflect the change.

\(fn MODE &optional TO-WHAT ANNOTATE-FLAG)" t nil)

(autoload 'diminish-undo "diminish" "\
Restore mode-line display of diminished mode MODE to its minor-mode value.
Do nothing if the arg is a minor mode that hasn't been diminished.

Interactively, enter (with completion) the name of any diminished mode (a
mode that was formerly a minor mode on which you invoked M-x diminish).
To restore all diminished modes to minor status, answer `diminished-modes'.
The response to the prompt shouldn't be quoted.  However, in Lisp code,
the arg must be quoted as a symbol, as in (diminish-undo 'diminished-modes).

If ANNOTATE-FLAG is nil or omitted, the normal case in interactive use, then
the variable `diminished-minor-modes' will be modified to reflect the change.

\(fn MODE &optional ANNOTATE-FLAG)" t nil)

(autoload 'diminished-modes "diminish" "\
Echo all active diminished or minor modes as if they were minor.
The display goes in the echo area; if it's too long even for that,
you can see the whole thing in the *Messages* buffer.
This doesn't change the status of any modes; it just lets you see
what diminished modes would be on the mode-line if they were still minor.

\(fn)" t nil)

;;;***

;;;### (autoloads (edit-env) "edit-env" "edit-env.el" (19366 23256))
;;; Generated autoloads from edit-env.el

(autoload 'edit-env "edit-env" "\
Display, edit, delete and add environment variables.

\(fn)" t nil)

;;;***

;;;### (autoloads (egocentric-update-regexp-list egocentric-mode-off
;;;;;;  egocentric-mode-on egocentric-mode) "egocentric" "egocentric.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from egocentric.el

(autoload 'egocentric-mode "egocentric" "\
Toggle egocentric mode.
Optional argument ARG is an optional boolean controling whether egocentric-mode should be turned on/off.

\(fn &optional ARG)" t nil)

(autoload 'egocentric-mode-on "egocentric" "\
Turn Egocentric mode on.

\(fn)" t nil)

(autoload 'egocentric-mode-off "egocentric" "\
Turn Egocentric mode off.

\(fn)" t nil)

(autoload 'egocentric-update-regexp-list "egocentric" "\
Update ``egocentric-regexp-list'' from $USER and $NAME variables.

\(fn)" t nil)

;;;***

;;;### (autoloads (ff-paths-install) "ff-paths" "ff-paths.el" (19366
;;;;;;  23256))
;;; Generated autoloads from ff-paths.el

(autoload 'ff-paths-install "ff-paths" "\
Install ff-paths as a `find-file-not-found-hooks' and to ffap package.

\(fn)" nil nil)

;;;***

;;;### (autoloads (floatbg-mode) "floatbg" "floatbg.el" (19366 23256))
;;; Generated autoloads from floatbg.el

(autoload 'floatbg-mode "floatbg" "\
Toggle floatbg mode

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (folding-mode turn-on-folding-mode turn-off-folding-mode
;;;;;;  folding-mode-add-find-file-hook folding-keep-hooked folding-install-hooks
;;;;;;  folding-uninstall-hooks folding-mode-hook-no-regexp folding-mode-string
;;;;;;  folding-inside-mode-name folding-default-mouse-keys-function
;;;;;;  folding-default-keys-function) "folding" "folding.el" (19366
;;;;;;  23256))
;;; Generated autoloads from folding.el

(defvar folding-mode nil "\
When Non nil, Folding mode is active in the current buffer.")

(defvar folding-default-keys-function 'folding-bind-default-keys "\
*Function or list of functions used to define keys for Folding mode.
Possible values are:
  folding-bind-default-key
        The standard keymap.

  `folding-bind-backward-compatible-keys'
        Keys used by older versions of Folding mode. This function
        does not conform to Emacs 19.29 style conversions concerning
        key bindings. The prefix key is C - c

  `folding-bind-outline-compatible-keys'
        Define keys compatible with Outline mode.

  `folding-bind-foldout-compatible-keys'
        Define some extra keys compatible with Foldout.

All except `folding-bind-backward-compatible-keys' used the value of
the variable `folding-mode-prefix-key' as prefix the key.
The default is C - c @")

(custom-autoload 'folding-default-keys-function "folding" t)

(defvar folding-default-mouse-keys-function 'folding-bind-default-mouse "\
*Function to bind default mouse keys to `folding-mode-map'.")

(custom-autoload 'folding-default-mouse-keys-function "folding" t)

(defvar folding-inside-mode-name "Fld" "\
*Mode line addition to show inside levels of 'fold' .")

(custom-autoload 'folding-inside-mode-name "folding" t)

(defvar folding-mode-string "Fld" "\
*The minor mode string displayed when mode is on.")

(custom-autoload 'folding-mode-string "folding" t)

(defvar folding-mode-hook-no-regexp "RMAIL" "\
*Regexp which disable automatic folding mode turn on for certain files.")

(custom-autoload 'folding-mode-hook-no-regexp "folding" t)

(defvar folding-mode-marks-alist nil "\
List of (major-mode . fold mark) default combinations to use.
When Folding mode is started, the major mode is checked, and if there
are fold marks for that major mode stored in `folding-mode-marks-alist',
those marks are used by default. If none are found, the default values
of \"{{{ \" and \"}}}\" are used.

Use function  `folding-add-to-marks-list' to add more fold marks. The function
also explains the alist use in details.

Use function `folding-set-local-variables' if you change the current mode's
folding marks during the session.")

(autoload 'folding-uninstall-hooks "folding" "\
Remove hooks set by folding.

\(fn)" nil nil)

(autoload 'folding-install-hooks "folding" "\
Install folding hooks.

\(fn)" nil nil)

(autoload 'folding-keep-hooked "folding" "\
Make sure hooks are in their places.

\(fn)" nil nil)

(autoload 'folding-mode-add-find-file-hook "folding" "\
Append `folding-mode-find-file-hook' to the list `find-file-hooks'.

This has the effect that afterwards, when a folded file is visited, if
appropriate Emacs local variable entries are recognized at the end of
the file, Folding mode is started automatically.

If `inhibit-local-variables' is non-nil, this will not happen regardless
of the setting of `find-file-hooks'.

To declare a file to be folded, put `folded-file: t' in the file's
local variables. eg., at the end of a C source file, put:

/*
Local variables:
folded-file: t
*/

The local variables can be inside a fold.

\(fn)" t nil)

(autoload 'turn-off-folding-mode "folding" "\
Turn off folding.

\(fn)" nil nil)

(autoload 'turn-on-folding-mode "folding" "\
Turn on folding.

\(fn)" nil nil)

(autoload 'folding-mode "folding" "\
A folding-editor-like minor mode. ARG INTER.

These are the basic commands that Folding mode provides:

\\{folding-mode-map}

Keys starting with `folding-mode-prefix-key'

\\{folding-mode-prefix-map}

     folding-convert-buffer-for-printing:
     `\\[folding-convert-buffer-for-printing]'
     Makes a ready-to-print, formatted, unfolded copy in another buffer.

     Read the documentation for the above functions for more information.

Overview

    Folds are a way of hierarchically organizing the text in a file, so
    that the text can be viewed and edited at different levels. It is
    similar to Outline mode in that parts of the text can be hidden from
    view. A fold is a region of text, surrounded by special \"fold marks\",
    which act like brackets, grouping the text. Fold mark pairs can be
    nested, and they can have titles. When a fold is folded, the text is
    hidden from view, except for the first line, which acts like a title
    for the fold.

    Folding mode is a minor mode, designed to cooperate with many other
    major modes, so that many types of text can be folded while they are
    being edited (eg., plain text, program source code, Texinfo, etc.).

Folding-mode function

    If Folding mode is not called interactively (`(interactive-p)' is nil),
    and it is called with two or less arguments, all of which are nil, then
    the point will not be altered if `folding-folding-on-startup' is set
    and `folding-whole-buffer' is called. This is generally not a good
    thing, as it can leave the point inside a hidden region of a fold, but
    it is required if the local variables set \"mode: folding\" when the
    file is first read (see `hack-local-variables').

    Not that you should ever want to, but to call Folding mode from a
    program with the default behavior (toggling the mode), call it with
    something like `(folding-mode nil t)'.

Fold marks

    For most types of folded file, lines representing folds have \"{{{\"
    near the beginning. To enter a fold, move the point to the folded line
    and type `\\[folding-shift-in]'. You should no longer be able to see
    the rest of the file, just the contents of the fold, which you couldn't
    see before. You can use `\\[folding-shift-out]' to leave a fold, and
    you can enter and exit folds to move around the structure of the file.

    All of the text is present in a folded file all of the time. It is just
    hidden. Folded text shows up as a line (the top fold mark) with \"...\"
    at the end. If you are in a fold, the mode line displays \"inside n
    folds Narrow\", and because the buffer is narrowed you can't see outside
    of the current fold's text.

    By arranging sections of a large file in folds, and maybe subsections
    in sub-folds, you can move around a file quickly and easily, and only
    have to scroll through a couple of pages at a time. If you pick the
    titles for the folds carefully, they can be a useful form of
    documentation, and make moving though the file a lot easier. In
    general, searching through a folded file for a particular item is much
    easier than without folds.

Managing folds

    To make a new fold, set the mark at one end of the text you want in the
    new fold, and move the point to the other end. Then type
    `\\[folding-fold-region]'. The text you selected will be made into a
    fold, and the fold will be entered. If you just want a new, empty fold,
    set the mark where you want the fold, and then create a new fold there
    without moving the point. Don't worry if the point is in the middle of
    a line of text, `folding-fold-region' will not break text in the middle
    of a line. After making a fold, the fold is entered and the point is
    positioned ready to enter a title for the fold. Do not delete the fold
    marks, which are usually something like \"{{{\" and \"}}}\". There may
    also be a bit of fold mark which goes after the fold title.

    If the fold markers get messed up, or you just want to see the whole
    unfolded file, use `\\[folding-open-buffer]' to unfolded the whole
    file, so you can see all the text and all the marks. This is useful for
    checking/correcting unbalanced fold markers, and for searching for
    things. Use `\\[folding-whole-file]' to fold the buffer again.

    `folding-shift-out' will attempt to tidy the current fold just before
    exiting it. It will remove any extra blank lines at the top and bottom,
    (outside the fold marks). It will then ensure that fold marks exists,
    and if they are not, will add them (after asking). Finally, the number
    of blank lines between the fold marks and the contents of the fold is
    set to 1 (by default).

Folding package customizations

    If the fold marks are not set on entry to Folding mode, they are set to
    a default for current major mode, as defined by
    `folding-mode-marks-alist' or to \"{{{ \" and \"}}}\" if none are
    specified.

    To bind different commands to keys in Folding mode, set the bindings in
    the keymap `folding-mode-map'.

    The hooks `folding-mode-hook' and `<major-mode-name>-folding-hook' are
    called before folding the buffer and applying the key bindings in
    `folding-mode-map'. This is a good hook to set extra or different key
    bindings in `folding-mode-map'. Note that key bindings in
    `folding-mode-map' are only examined just after calling these hooks;
    new bindings in those maps only take effect when Folding mode is being
    started. The hook `folding-load-hook' is called when Folding mode is
    loaded into Emacs.

Mouse behavior

    If you want folding to detect point of actual mouse click, please see
    variable `folding-mouse-yank-at-p'.

    To customise the mouse actions, look at `folding-behave-table'.

\(fn &optional ARG INTER)" t nil)

;;;***

;;;### (autoloads (framepop-display-buffer framepop-enable framepop-disable)
;;;;;;  "framepop" "framepop.el" (19366 23256))
;;; Generated autoloads from framepop.el

(autoload 'framepop-disable "framepop" "\
Disable automatic pop-up temporary windows.

\(fn)" t nil)

(autoload 'framepop-enable "framepop" "\
Enable automatic pop-up temporary windows.

\(fn)" t nil)

(autoload 'framepop-display-buffer "framepop" "\
Display-buffer for FramePop.
Displays BUF in a separate frame -- the FramePop frame.
BUF bay be a buffer or a buffer name.

You can display a buffer in the FramePop frame with \\[framepop-display-buffer].

Several commands are available for manipulating the FramePop frame after
typing the keymap prefix (default F2).

\\{framepop-map}

\(fn BUF)" t nil)

;;;***

;;;### (autoloads (highlight-beyond-fill-column) "highlight-beyond-fill-column"
;;;;;;  "highlight-beyond-fill-column.el" (19366 23256))
;;; Generated autoloads from highlight-beyond-fill-column.el

(autoload 'highlight-beyond-fill-column "highlight-beyond-fill-column" "\
Setup this buffer to highlight beyond the `fill-column'.

\(fn)" t nil)

;;;***

;;;### (autoloads (highlight-current-line-minor-mode) "highlight-current-line"
;;;;;;  "highlight-current-line.el" (19366 23256))
;;; Generated autoloads from highlight-current-line.el

(autoload 'highlight-current-line-minor-mode "highlight-current-line" "\
Toggle highlight-current-line minor mode.
With ARG, turn minor mode on if ARG is positive, off otherwise.
You can customize the face of the highlighted line and whether the entire
line is hightlighted by customizing the group highlight-current-line.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (home-end-end home-end-home) "home-end" "home-end.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from home-end.el

(autoload 'home-end-home "home-end" "\
Go to beginning of line/window/buffer.
First hitting key goes to beginning of line, second in a row goes to
beginning of window, third in a row goes to beginning of buffer.

\(fn &optional ARG)" t nil)

(autoload 'home-end-end "home-end" "\
Go to end of line/window/buffer.
First hitting key goes to end of line, second in a row goes to end
of window, third in a row goes to end of buffer.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (htmlize-many-files-dired htmlize-many-files htmlize-file
;;;;;;  htmlize-region htmlize-buffer) "htmlize" "htmlize.el" (19366
;;;;;;  23256))
;;; Generated autoloads from htmlize.el

(autoload 'htmlize-buffer "htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads (joc-toggle-buffer) "joc-toggle-buffer" "joc-toggle-buffer.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from joc-toggle-buffer.el

(autoload 'joc-toggle-buffer "joc-toggle-buffer" "\
Switch to previous active buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (joc-toggle-case-by-region joc-toggle-case-by-word-backwards
;;;;;;  joc-toggle-case-by-word joc-toggle-case-backwards joc-toggle-case)
;;;;;;  "joc-toggle-case" "joc-toggle-case.el" (19366 23256))
;;; Generated autoloads from joc-toggle-case.el

(autoload 'joc-toggle-case "joc-toggle-case" "\
Toggle the case of the character under point.
If called with a PREFIX argument, it toggles that many
characters (see joc-toggle-case-stop-at-eol).  If the prefix is
negative, the case of the character before point is toggled, and
if called with a prefix argument, N characters before point will
have their case toggled (see also joc-toggle-case-backwards).

\(fn PREFIX)" t nil)

(autoload 'joc-toggle-case-backwards "joc-toggle-case" "\
Convenience function to toggle case of character preceeding point.
This is the same as calling joc-toggle-case with a negative
prefix (and is in fact implemented that way).

\(fn PREFIX)" t nil)

(autoload 'joc-toggle-case-by-word "joc-toggle-case" "\
Similar to joc-toggle-case except that the count (supplied by
the prefix argument) is of the number of words, not letters, to
be toggled.  It will start from point and move to the end of
the first word at a minimum, and then take whole words from
there.  If called with a negative prefix, then from point to
beginning of current word will have their case toggled, going
backwards for N words (see also
joc-toggle-case-by-word-backwards).  Note that the
joc-toggle-case-stop-at-eol setting will be honored.

\(fn PREFIX)" t nil)

(autoload 'joc-toggle-case-by-word-backwards "joc-toggle-case" "\
Convenience function to toggle case by word, backwards.
This is the same as calling joc-toggle-case-by-word with a
negative prefix (and is in fact implemented that way).

\(fn PREFIX)" t nil)

(autoload 'joc-toggle-case-by-region "joc-toggle-case" "\
Toggles the case of all characters in the current region.

\(fn START END)" t nil)

;;;***

;;;### (autoloads (keydef) "keydef" "keydef.el" (19366 23256))
;;; Generated autoloads from keydef.el

(autoload 'keydef "keydef" "\
Define the key sequence SEQ, written in kbd form, to run CMD.
CMD is automatically wrapped in an anonymous interactive function if it
is Emacs Lisp code rather than a command name. SEQ may also have the form
\(MODE SEQ) where the car is a mode name; for example

  (keydef (latex \"C-c %\") comment-region)

means to define the given key in latex-mode-map. And this will work even
if latex-mode is not loaded yet, provided that it is possible to deduce
the file that it will be loaded from, either from the autoload info or
by searching for a matching file name in the Emacs load path.

For best results, the \"mode name\" that you use here should yield the
proper foo-mode-map symbol when \"-mode-map\" is appended; although
this will normally match the mode name as given in the mode line,
Shell-script is one example I can think of where it doesn't---the map is
named sh-mode-map. The common cases that I know about, including
shell-script-mode and latex-mode, are handled as exceptions through the
variable mode-map-alist. But for other cases you will need to look up
the name of the mode-map that goes with the given mode.

\(fn SEQ &rest CMD)" nil (quote macro))

;;;***

;;;### (autoloads (lcomp-activate-advices) "lcomp" "lcomp.el" (19366
;;;;;;  23256))
;;; Generated autoloads from lcomp.el

(autoload 'lcomp-activate-advices "lcomp" "\
Activate lcomp advices if ON is non-nil, disable otherwise.

\(fn ON)" t nil)

;;;***

;;;### (autoloads (markdown-mode) "markdown-mode" "markdown-mode.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from markdown-mode.el

(autoload 'markdown-mode "markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads (marker-visit-truncate-mark-ring marker-visit-next
;;;;;;  marker-visit-prev) "marker-visit" "marker-visit.el" (19366
;;;;;;  23256))
;;; Generated autoloads from marker-visit.el

(autoload 'marker-visit-prev "marker-visit" "\
From point, visit the nearest mark earlier in the buffer.

\(fn)" t nil)

(autoload 'marker-visit-next "marker-visit" "\
From point, visit the nearest mark later in the buffer.

\(fn)" t nil)

(autoload 'marker-visit-truncate-mark-ring "marker-visit" "\
Truncate the `mark-ring'.

\(fn)" t nil)

;;;***

;;;### (autoloads (matlab-shell matlab-mode) "matlab" "matlab.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from matlab.el

(autoload 'matlab-mode "matlab" "\
MATLAB(R) mode is a major mode for editing MATLAB dot-m files.
\\<matlab-mode-map>
Convenient editing commands are:
 \\[matlab-comment-region]   - Comment/Uncomment out a region of code.
 \\[matlab-fill-comment-line] - Fill the current comment line.
 \\[matlab-fill-region] - Fill code and comments in region.
 \\[matlab-fill-paragraph]     - Refill the current command or comment.
 \\[matlab-complete-symbol]   - Symbol completion of matlab symbolsbased on the local syntax.
 \\[matlab-indent-sexp] - Indent syntactic block of code.

Convenient navigation commands are:
 \\[matlab-beginning-of-command]   - Move to the beginning of a command.
 \\[matlab-end-of-command]   - Move to the end of a command.
 \\[matlab-beginning-of-defun] - Move to the beginning of a function.
 \\[matlab-end-of-defun] - Move do the end of a function.
 \\[matlab-forward-sexp] - Move forward over a syntactic block of code.
 \\[matlab-backward-sexp] - Move backwards over a syntactic block of code.

Convenient template insertion commands:
 \\[tempo-template-matlab-function] - Insert a function definition.
 \\[tempo-template-matlab-if] - Insert an IF END block.
 \\[tempo-template-matlab-for] - Insert a FOR END block.
 \\[tempo-template-matlab-switch] - Insert a SWITCH END statement.
 \\[matlab-insert-next-case] - Insert the next CASE condition in a SWITCH.
 \\[matlab-insert-end-block] - Insert a matched END statement.  With optional ARG, reindent.
 \\[matlab-stringify-region] - Convert plaintext in region to a string with correctly quoted chars.

Variables:
  `matlab-indent-level'		Level to indent blocks.
  `matlab-cont-level'		Level to indent continuation lines.
  `matlab-cont-requires-ellipsis' Does your MATLAB support implied elipsis.
  `matlab-case-level'		Level to unindent case statements.
  `matlab-indent-past-arg1-functions'
                                Regexp of functions to indent past the first
                                  argument on continuation lines.
  `matlab-maximum-indents'      List of maximum indents during lineups.
  `matlab-comment-column'       Goal column for on-line comments.
  `fill-column'			Column used in auto-fill.
  `matlab-indent-function-body' If non-nil, indents body of MATLAB functions.
  `matlab-functions-have-end'	If non-nil, MATLAB functions terminate with end.
  `matlab-return-function'	Customize RET handling with this function.
  `matlab-auto-fill'            Non-nil, do auto-fill at startup.
  `matlab-fill-code'            Non-nil, auto-fill code.
  `matlab-fill-strings'         Non-nil, auto-fill strings.
  `matlab-verify-on-save-flag'  Non-nil, enable code checks on save.
  `matlab-highlight-block-match-flag'
                                Enable matching block begin/end keywords.
  `matlab-vers-on-startup'	If t, show version on start-up.
  `matlab-handle-simulink'      If t, enable simulink keyword highlighting.

All Key Bindings:
\\{matlab-mode-map}

\(fn)" t nil)

(autoload 'matlab-shell "matlab" "\
Create a buffer with MATLAB running as a subprocess.

MATLAB shell cannot work on the MS Windows platform because MATLAB is not
a console application.

\(fn)" t nil)

;;;***

;;;### (autoloads (muttrc-mode) "muttrc-mode" "muttrc-mode.el" (19366
;;;;;;  23256))
;;; Generated autoloads from muttrc-mode.el

(autoload 'muttrc-mode "muttrc-mode" "\
Major mode for editing Muttrc files.
This function ends by invoking the function(s) `muttrc-mode-hook'.

\\{muttrc-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (nuke-trailing-whitespace) "nuke-trailing-whitespace"
;;;;;;  "nuke-trailing-whitespace.el" (19366 23256))
;;; Generated autoloads from nuke-trailing-whitespace.el

(autoload 'nuke-trailing-whitespace "nuke-trailing-whitespace" "\
Nuke all trailing whitespace in the buffer.
Whitespace in this case is just spaces or tabs.
This is a useful function to put on `write-file-hooks'.

Unless called interactively, this function uses
`nuke-trailing-whitespace-p' to determine how to behave.
However, even if this variable is t, this function will query for
replacement if the buffer is read-only.

\(fn)" t nil)

;;;***

;;;### (autoloads (obfuscate-url) "obfusurl" "obfusurl.el" (19366
;;;;;;  23256))
;;; Generated autoloads from obfusurl.el

(autoload 'obfuscate-url "obfusurl" "\
Obfuscate an URL under `point'.

This might be useful if you're writing out an URL for someone but the URL
itself is a spoiler. The URL will still work but it won't be readable (by
most mortals anyway).

\(fn)" t nil)

;;;***

;;;### (autoloads (pack-windows) "pack-windows" "pack-windows.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from pack-windows.el

(autoload 'pack-windows "pack-windows" "\
Resize all windows vertically to display as much information as possible.

Only windows that are on the left edge of the frame are taken into
account. The vertical space available in the frame is first divided
among all these windows. Then any window requireing less lines than it
got to display its whole buffer is shrinked, and the freed space is
divided equally among all the other windows.

If some vertical space remains afterwards, it is given in totality to
the currently selected window.

Do not shrink any window to less than `window-min-height'.

Shrink windows iteratively, performing at most `pack-windows-max-iteration'
iterations. The number of iterations really performed will be
displayed in the echo area if `pack-windows-verbose' is non-nil.

\(fn)" t nil)

;;;***

;;;### (autoloads (perldoc-perl-hook perldoc-at-point perldoc) "perldoc"
;;;;;;  "perldoc.el" (19366 23256))
;;; Generated autoloads from perldoc.el

(autoload 'perldoc "perldoc" "\
Run perldoc on the given STRING.
If the string is a recognised function then we can call `perldoc-function',
otherwise we call `perldoc-module'.
A non-nil interactive argument forces the caches to be updated.

\(fn &optional STRING RE-CACHE)" t nil)

(autoload 'perldoc-at-point "perldoc" "\
Call `perldoc' for string at point.

\(fn)" t nil)

(autoload 'perldoc-perl-hook "perldoc" "\
A hook which binds F1 to `perldoc-at-point'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (pod-mode) "pod-mode" "pod-mode.el" (19366 23256))
;;; Generated autoloads from pod-mode.el

(autoload 'pod-mode "pod-mode" "\
Major mode for editing POD files (Plain Old Documentation for Perl).

\(fn)" t nil)

;;;***

;;;### (autoloads (project-add) "projects" "projects.el" (19366 23256))
;;; Generated autoloads from projects.el

(autoload 'project-add "projects" "\
Add the project named NAME with root directory DIRECTORY.

\(fn NAME DIRECTORY)" t nil)

;;;***

;;;### (autoloads (protect-process-buffer-from-kill-mode protect-buffer-from-kill-mode)
;;;;;;  "protbuf" "protbuf.el" (19366 23256))
;;; Generated autoloads from protbuf.el

(defvar protect-buffer-from-kill-mode nil "\
*If non-nil, then prevent buffer from being accidentally killed.
This variable is local to all buffers.")

(defvar protect-process-buffer-from-kill-mode nil "\
*If non-nil, then protect buffer with live process from being killed.
This variable is local to all buffers.")

(defvar protect-process-buffer-from-kill-preserve-function nil "\
*Function to run to determine whether to kill a process buffer.
If function returns non-nil, buffer is preserved.  Otherwise, the buffer
may be killed.

If this variable is undefined, default action is to test whether a process
object is using this buffer as a process buffer.

This variable is buffer-local when set.")

(autoload 'protect-buffer-from-kill-mode "protbuf" "\
Toggle `kill-buffer' protection on current buffer.
Optionally, set a PREFIX argument to set or unset protection, and specify
alternate BUFFER.

\(fn &optional PREFIX BUFFER)" t nil)

(autoload 'protect-process-buffer-from-kill-mode "protbuf" "\
Toggle `kill-buffer' protection on current buffer with active process.
Protection only applies as long as the buffer has an active process.
Optionally, set a PREFIX argument to set or unset protection, and specify
alternate BUFFER.

\(fn &optional PREFIX BUFFER)" t nil)

;;;***

;;;### (autoloads (protocols-clear-cache protocols-lookup) "protocols"
;;;;;;  "protocols.el" (19366 23256))
;;; Generated autoloads from protocols.el

(autoload 'protocols-lookup "protocols" "\
Find a protocol and display its details.

\(fn SEARCH)" t nil)

(autoload 'protocols-clear-cache "protocols" "\
Clear the protocols \"cache\".

\(fn)" t nil)

;;;***

;;;### (autoloads (quack-install quack-pltfile-mode quack-scheme-mode-hookfunc
;;;;;;  quack-inferior-scheme-mode-hookfunc) "quack" "quack.el" (19366
;;;;;;  23256))
;;; Generated autoloads from quack.el
(add-to-list 'auto-mode-alist '("\\.plt\\'" . quack-pltfile-mode))

(autoload 'quack-inferior-scheme-mode-hookfunc "quack" "\
Not documented

\(fn)" nil nil)

(autoload 'quack-scheme-mode-hookfunc "quack" "\
Not documented

\(fn)" nil nil)

(autoload 'quack-pltfile-mode "quack" "\
Not documented

\(fn)" t nil)

(autoload 'quack-install "quack" "\
Install quack.el into scheme-mode.

\(fn)" nil nil)

;;;***

;;;### (autoloads (rfcview-mode rfcview-find-index rfcview-find-rfc
;;;;;;  rfcview-customize) "rfcview" "rfcview.el" (19366 23256))
;;; Generated autoloads from rfcview.el

(autoload 'rfcview-customize "rfcview" "\
Enter the RFCview Custom group.

\(fn)" t nil)

(autoload 'rfcview-find-rfc "rfcview" "\
Find RFC NUMBER and view it in RFcview mode.
Interactively, prompt for the number.
See `rfcview-rfc-location-pattern' for where to search.

\(fn NUMBER)" t nil)

(autoload 'rfcview-find-index "rfcview" "\
Find the RFC index and hyperlink it.

\(fn)" t nil)

(autoload 'rfcview-mode "rfcview" "\
Major mode for viewing Internet RFCs.

http://www.loveshack.ukfsn.org/emacs/rfcview.el
http://www.neilvandyke.org/rfcview/

Key bindings:
\\{rfcview-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (services-clear-cache services-lookup) "services"
;;;;;;  "services.el" (19366 23256))
;;; Generated autoloads from services.el

(autoload 'services-lookup "services" "\
Find a service and display its details.

\(fn SEARCH PROTOCOL)" t nil)

(autoload 'services-clear-cache "services" "\
Clear the services \"cache\".

\(fn)" t nil)

;;;***

;;;### (autoloads (turn-on-setnu-mode setnu-mode) "setnu" "setnu.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from setnu.el

(autoload 'setnu-mode "setnu" "\
Toggle `setnu-mode'.
With prefix argument ARG, turn `setnu-mode' on if argument is positive.
When `setnu-mode' is enabled, a line number will appear at the left
margin of each line.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-setnu-mode "setnu" "\
Turn on `setnu-mode'.
Useful for adding to a `major-mode' hook variable.
Example:
    (add-hook 'text-mode-hook 'turn-on-setnu-mode)
to automatically turn on line numbering when enterting `text-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (shell-command-completion-mode) "shell-command"
;;;;;;  "shell-command.el" (19366 23256))
;;; Generated autoloads from shell-command.el

(autoload 'shell-command-completion-mode "shell-command" "\
Enable or disable tab-completion for some commands.
The commands are `shell-command', `shell-command-on-region', `grep',
`grep-find' and `compile'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (show-ws-toggle-show-trailing-whitespace show-ws-toggle-show-hard-spaces
;;;;;;  show-ws-toggle-show-tabs) "show-wspace" "show-wspace.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from show-wspace.el

(defalias 'toggle-show-tabs-show-ws 'show-ws-toggle-show-tabs)

(autoload 'show-ws-toggle-show-tabs "show-wspace" "\
Toggle highlighting of TABs, using face `show-ws-tab'.

\(fn)" t nil)

(defalias 'toggle-show-hard-spaces-show-ws 'show-ws-toggle-show-hard-spaces)

(autoload 'show-ws-toggle-show-hard-spaces "show-wspace" "\
Toggle highlighting of non-breaking space characters (`\240').
Uses face `show-ws-hard-space'.

\(fn)" t nil)

(defalias 'toggle-show-trailing-whitespace-show-ws 'show-ws-toggle-show-trailing-whitespace)

(autoload 'show-ws-toggle-show-trailing-whitespace "show-wspace" "\
Toggle highlighting of trailing whitespace.
Uses face `show-ws-trailing-whitespace'.

\(fn)" t nil)

;;;***

;;;### (autoloads (sm-add-all-headers sm-add-random-header) "silly-mail"
;;;;;;  "silly-mail.el" (19366 23256))
;;; Generated autoloads from silly-mail.el

(autoload 'sm-add-random-header "silly-mail" "\
Insert a random silly mail header.
The choice of available headers is taken from `sm-mail-header-table'.
If a random header was already inserted, it it removed in favor of a new one.

\(fn)" t nil)

(autoload 'sm-add-all-headers "silly-mail" "\
Insert one of every kind of silly mail header defined.
The choice of available headers is taken from `sm-mail-header-table'.

\(fn)" t nil)

;;;***

;;;### (autoloads (slang-mode) "slang-mode" "slang-mode.el" (19366
;;;;;;  23256))
;;; Generated autoloads from slang-mode.el

(autoload 'slang-mode "slang-mode" "\
Major mode for editing slang scripts.
The following keys are bound:
\\{slang-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (sys-apropos) "sys-apropos" "sys-apropos.el" (19366
;;;;;;  23256))
;;; Generated autoloads from sys-apropos.el

(autoload 'sys-apropos "sys-apropos" "\
Ask the system apropos command for man-pages matching QUERY.

\(fn QUERY)" t nil)

;;;***

;;;### (autoloads (tabbar-mwheel-mode tabbar-mode tabbar-local-mode
;;;;;;  tabbar-mwheel-switch-group tabbar-mwheel-switch-tab tabbar-mwheel-forward-tab
;;;;;;  tabbar-mwheel-backward-tab tabbar-mwheel-forward-group tabbar-mwheel-backward-group
;;;;;;  tabbar-mwheel-forward tabbar-mwheel-backward tabbar-press-scroll-right
;;;;;;  tabbar-press-scroll-left tabbar-press-home tabbar-forward-tab
;;;;;;  tabbar-backward-tab tabbar-forward-group tabbar-backward-group
;;;;;;  tabbar-forward tabbar-backward) "tabbar" "tabbar.el" (19366
;;;;;;  23256))
;;; Generated autoloads from tabbar.el

(autoload 'tabbar-backward "tabbar" "\
Select the previous available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-forward "tabbar" "\
Select the next available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-backward-group "tabbar" "\
Go to selected tab in the previous available group.

\(fn)" t nil)

(autoload 'tabbar-forward-group "tabbar" "\
Go to selected tab in the next available group.

\(fn)" t nil)

(autoload 'tabbar-backward-tab "tabbar" "\
Select the previous visible tab.

\(fn)" t nil)

(autoload 'tabbar-forward-tab "tabbar" "\
Select the next visible tab.

\(fn)" t nil)

(autoload 'tabbar-press-home "tabbar" "\
Press the tab bar home button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-left "tabbar" "\
Press the tab bar scroll-left button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-right "tabbar" "\
Press the tab bar scroll-right button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-mwheel-backward "tabbar" "\
Select the previous available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward "tabbar" "\
Select the next available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-group "tabbar" "\
Go to selected tab in the previous available group.
If there is only one group, select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-group "tabbar" "\
Go to selected tab in the next available group.
If there is only one group, select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-tab "tabbar" "\
Select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-tab "tabbar" "\
Select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-tab "tabbar" "\
Select the next or previous tab according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-group "tabbar" "\
Select the next or previous group of tabs according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-local-mode "tabbar" "\
Toggle local display of the tab bar.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.
When turned on, if a local header line is shown, it is hidden to show
the tab bar.  The tab bar is locally hidden otherwise.  When turned
off, if a local header line is hidden or the tab bar is locally
hidden, it is shown again.  Signal an error if Tabbar mode is off.

\(fn &optional ARG)" t nil)

(defvar tabbar-mode nil "\
Non-nil if Tabbar mode is enabled.
See the command `tabbar-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mode'.")

(custom-autoload 'tabbar-mode "tabbar" nil)

(autoload 'tabbar-mode "tabbar" "\
Toggle display of a tab bar in the header line.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mode-map}

\(fn &optional ARG)" t nil)

(defvar tabbar-mwheel-mode nil "\
Non-nil if Tabbar-Mwheel mode is enabled.
See the command `tabbar-mwheel-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mwheel-mode'.")

(custom-autoload 'tabbar-mwheel-mode "tabbar" nil)

(autoload 'tabbar-mwheel-mode "tabbar" "\
Toggle use of the mouse wheel to navigate through tabs or groups.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mwheel-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (tail-command tail-file) "tail" "tail.el" (19366
;;;;;;  23256))
;;; Generated autoloads from tail.el

(autoload 'tail-file "tail" "\
Tails FILE specified with argument FILE inside a new buffer.
FILE *cannot* be a remote file specified with ange-ftp syntax because it is
passed to the Unix tail command.

\(fn FILE)" t nil)

(autoload 'tail-command "tail" "\
Tails COMMAND with arguments ARGS inside a new buffer.
It is also called by `tail-file'

\(fn COMMAND &rest ARGS)" t nil)

;;;***

;;;### (autoloads (trivial-cite) "tc" "tc.el" (19366 23256))
;;; Generated autoloads from tc.el

(autoload 'trivial-cite "tc" "\
A simple citation function for use in news/mailreaders.
It parses the headers via the functions defined in `tc-header-funs', then
makes a attribution for the citation using `tc-make-attribution' and indents
the inserted text with `tc-indent-citation'.
Numeric prefix arguments is how many lines of body to cite (useful for citing
mails with long attachments).
Usage:  (auto-load 'trivial-cite \"tc\" t t)
        (add-hook 'mail-citation-hook 'trivial-cite)
Bugs:  Not very intelligent about old citation marks other than '>'.
Customization:  See variables tc-fill-column, tc-remove-signature,
tc-citation-string, tc-make-attribution and tc-header-funs.

\(fn)" nil nil)

;;;***

;;;### (autoloads (thinks-maybe-region thinks-yank thinks-region
;;;;;;  thinks) "thinks" "thinks.el" (19366 23256))
;;; Generated autoloads from thinks.el

(autoload 'thinks "thinks" "\
Insert TEXT wrapped in a think bubble.

Prefix a call to this function with \\[universal-argument] if you don't want
the text to be filled for you.

\(fn TEXT)" t nil)

(autoload 'thinks-region "thinks" "\
Bubble wrap region bounding START and END.

Prefix a call to this function with \\[universal-argument] if you don't want
the text to be filled for you.

\(fn START END)" t nil)

(autoload 'thinks-yank "thinks" "\
Do a `yank' and bubble wrap the yanked text.

Prefix a call to this function with \\[universal-argument] if you don't want
the text to be filled for you.

\(fn)" t nil)

(autoload 'thinks-maybe-region "thinks" "\
If region is active, bubble wrap region bounding START and END.
If not, query for text to insert in bubble.

\(fn)" t nil)

;;;***

;;;### (autoloads (tlc-mode) "tlc" "tlc.el" (19366 23256))
;;; Generated autoloads from tlc.el

(autoload 'tlc-mode "tlc" "\
Major mode for editing Tlc files, or files found in tlc directories.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.tlc$" .tlc-mode))

;;;***

;;;### (autoloads (tld) "tld" "tld.el" (19366 23256))
;;; Generated autoloads from tld.el

(autoload 'tld "tld" "\
Search the TLD list.

\(fn SEARCH)" t nil)

;;;***

;;;### (autoloads (twiddle-compile twiddle-start) "twiddle" "twiddle.el"
;;;;;;  (19366 23256))
;;; Generated autoloads from twiddle.el

(autoload 'twiddle-start "twiddle" "\
Start a mode line display hack.
If called interactively with a prefix argument, prompt for the name of
a hack to run.  If called from lisp, optional argument HACK is the name of
a hack to run.
Named hacks are defined in the table `twiddle-hacks'.

\(fn &optional HACK)" t nil)

(autoload 'twiddle-compile "twiddle" "\
Like \\[compile], but run a twiddle hack during compilation.
If called with a prefix argument, prompt for a specific hack to run.

\(fn &rest COMPILE-ARGS)" t nil)

;;;***

;;;### (autoloads (underhat-region) "under" "under.el" (19366 23256))
;;; Generated autoloads from under.el

(autoload 'underhat-region "under" "\
Underline the region.

\(fn)" t nil)

;;;***

;;;### (autoloads (xrdb-mode) "xrdb-mode" "xrdb-mode.el" (19366 23256))
;;; Generated autoloads from xrdb-mode.el

(autoload 'xrdb-mode "xrdb-mode" "\
Major mode for editing xrdb config files

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-fill-inhibit.el" "clipper.el" "coffee.el"
;;;;;;  "csv-mode.el" "cwebm.el" "cyclebuffer.el" "dict.el" "dirvars.el"
;;;;;;  "emacs-goodies-custom.el" "emacs-goodies-el.el" "filladapt.el"
;;;;;;  "highlight-completion.el" "initsplit.el" "keywiz.el" "map-lines.el"
;;;;;;  "maplev.el" "minibuf-electric.el" "minibuffer-complete-cycle.el"
;;;;;;  "mutt-alias.el" "session.el" "todoo.el" "toggle-option.el")
;;;;;;  (19366 23256 903416))

;;;***

;;;### (autoloads (align-all-strings align-string) "align-string"
;;;;;;  "align-string.el" (19366 23256))
;;; Generated autoloads from align-string.el

(autoload 'align-string "align-string" "\
Align first occurrence of REGEXP in each line of region.
If given a prefix argument, align occurrence number COUNT on each line.

\(fn BEGIN END REGEXP COUNT)" t nil)

(autoload 'align-all-strings "align-string" "\
Align all occurrences of REGEXP in each line of region.
That is to say, align the first occurrence of each line with each other,
align the second occurence of each line with each other, and so on.

\(fn BEGIN END REGEXP)" t nil)

;;;***
(provide 'emacs-goodies-loaddefs)
