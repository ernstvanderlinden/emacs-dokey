;;; dokey.el --- trigger kbd events -*- lexical-binding: t -*-

;; Copyright (C) 2015-2019  Free Software Foundation, Inc.

;; Author: Ernst M. van der Linden <ernst.vanderlinden@ernestoz.com>
;; URL: https://github.com/ernstvanderlinden/dokey
;; Version: 1.0.0
;; Package-Requires: ()
;; Keywords: convenience

;; This file is part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The dokey package lets you fire kbd-macro events, in simple words,
;; automatically `press` keys.  For example to trigger a key sequence
;; of `C-c C-m` you call (dokey-run "C-c C-m") .
;; 
;; Two other examples:
;; (global-set-key (kbd "C-y") (dokey "M-x emacs-"))
;; (global-set-key (kbd "C-p") (dokey "C-x C-f dokey-tmp RET insert some text"))

;; To enable dokey on Emacs startup, add following to your init.el:
;;
;;   (require 'dokey)
;;

;;; Code:

(defun dokey (kbd-macro)
  "An interactive lambda which fires a KBD-MACRO."
  (lambda ()
    (interactive)
    (dokey-run kbd-macro)))

(defun dokey-run (kbd-macro)
  "Fires a KBD-MACRO provided as argument."
  (setq unread-command-events
        (listify-key-sequence
         (read-kbd-macro kbd-macro))))

(provide 'dokey)
;;; dokey.el ends here
