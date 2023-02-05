
# Table of Contents

-   [About](#org726f4eb)
-   [Installation](#org535a317)



<a id="org726f4eb"></a>

# About

Minor mode for EXWM.

Changes firefox keyboard shortcuts with emacs-like key-bindings, utilizing [exwm-firefox-core](https://github.com/walseb/exwm-firefox-core).


<a id="org535a317"></a>

# Installation

Clone to your emacs folder

    git clone https://github.com/ThanosApollo/exwm-firefox-holyk.git ~/.emacs.d/lisp/exwm-firefox-holyK

Add this to your `~/.emacs.d/init.el`

    (add-to-list 'load-path "~/dotfiles/.emacs.d/lisp") ; Add folder to load-path
    (load 'exwm-firefox-holyK)

then run `M-x RET exwm-firefox-holyK-mode`

