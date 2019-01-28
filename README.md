Emacs - dokey
==============
Emacs package to trigger kbd events.

Install
-------
#### Clone
As this package is not on [Melpa](https://melpa.org) (yet), clone this repo and call ```package-install-file``` or simply add a ```load-path``` which points to **dokey** local repo. If you prefer, you could use [quelpa](https://github.com/quelpa/quelpa) as well.

#### Startup
To enable **dokey** on Emacs startup, add the following to your init.el:

```elisp
(require 'dokey)
```
#### Dependency
*None*

Usage
-----
#### Example 1
```elisp
(global-set-key (kbd "C-y") (dokey "M-x emacs-"))
```
#### Example 2
```elisp
(global-set-key (kbd "C-p") (dokey "C-x C-f dokey-tmp RET insert some text"))
```
#### Example 2
```elisp
(dokey-run "C-c C-m")
```
