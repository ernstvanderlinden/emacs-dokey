Emacs - dokey
==============
Emacs package to trigger kbd events.

Copyright and License
---------------------
Copyright (C) 2015-2019  Free Software Foundation, Inc.

Author: Ernst M. van der Linden <ernst.vanderlinden@ernestoz.com> \
URL: https://github.com/ernstvanderlinden/dokey \
Version: 1.0.0 \
Package-Requires: () \
Keywords: convenience

This file is part of GNU Emacs.

This file is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

For a full copy of the GNU General Public License
see <http://www.gnu.org/licenses/>.

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
