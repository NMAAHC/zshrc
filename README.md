Installation instructions for custom NMAAHC zshrc and associated files.

Create the following directories

$HOME/github & $HOME/github/nmaahc

easy one liner in terminal mkdir -p $HOME/github/nmaahc

go to https://github.com/NMAAHC/zshrc and fork that repo into your own github account

cd into $HOME/github/nmaahc and, from your own repo, clone the repo you just forked: git clone https://github.com/[yourname]/zshrc

Open ~/.zshenv in an editor

(If you don't have .zshenv file installed, create one by typing in terminal: touch ~/.zshenv)

past the following into the .zshevn

    # default OS X PATH: /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin
    export PATH="~/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin"

    # create symlink so that .zshrc .zshrc_alias .zshrc_functions is linked to your zshrc file in your local github repo
    ln -sfn $HOME/github/nmaahc/zshrc/zshrc $HOME/.zshrc
    ln -sfn $HOME/github/nmaahc/zshrc/zshrc_alias $HOME/.zshrc_alias
    ln -sfn $HOME/github/nmaahc/zshrc/zshrc_functions $HOME/.zshrc_functions

NOTE: This presumes a folder named "nmaahc". One could, of course, clone this repo to a directory of one's choosing and change $HOME/github/nmaahc/ to the path of the directory.

ex. If you create a folder called myrepo on desktop, then the path in your .zshenv file should be: $HOME/Desktop/myrepo/

Restart your CLI and everything should work. 

