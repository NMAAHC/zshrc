## Installation instructions for custom NMAAHC zshrc and associated files

1. Create the following directories:

    `$HOME/github` & `$HOME/github/nmaahc` 

     -  easy one liner in terminal: 
        `mkdir -p $HOME/github/nmaahc`


2. Go to https://github.com/NMAAHC/zshrc and fork that repo into your own github account


3. cd into `$HOME/github/nmaahc` and, from your own github account repo, clone the repo you just forked: 
    - `git clone https://github.com/[yourGithubname]/zshrc`


4.  Check to see that zsh is your default shell:
     - type `echo $0` in the terminal, the result should say `-zsh`
     - if it does not, type `cat /etc/shells` and look for the zsh shell - is will be `/bin/zsh`
     - type `chsh -s /bin/zsh` in the terminal, it will ask for you password
     - restart the termianl and type `echo $0` and it shoudl display `-zsh`

5.  Open `~/.zshenv` in an editor

    - (If you don't have .zshenv file installed, create one by typing in terminal: touch ~/.zshenv)


6. past the following into the .zshevn:


    ```
    # default OS X PATH: /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin
    export PATH="~/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin"

    # create symlink so that .zshrc .zshrc_alias .zshrc_functions are 
    # linked to your zshrc, zshrc_alias and zshrc_functions files in your local github repo
    ln -sfn $HOME/github/nmaahc/zshrc/zshrc $HOME/.zshrc
    ln -sfn $HOME/github/nmaahc/zshrc/zshrc_alias $HOME/.zshrc_alias
    ln -sfn $HOME/github/nmaahc/zshrc/zshrc_functions $HOME/.zshrc_functions

- NOTE: This presumes a folder named "nmaahc". One could, of course, clone this repo to a directory of one's choosing and change `$HOME/github/nmaahc/` to the path of the directory.

    - ex. If you create a folder called myrepo on desktop, then the path in your .zshenv file should be: `$HOME/Desktop/myrepo/`

7. Restart your CLI and everything should work. You will now have all of the alias and funcions in the zshrc_alias and zshrc_functions files at your disposal
    - example: 
        - typing `ll` in the terminal will alias to `ls -lahG` 
        - typing `treeL` in the terminal will alias to `tree -RapugD --si --du`
        - typing `rsyncDAMS` will call the funciton `rsync -avvPhi --no-p --stats "${@}"`
    - for more examples look at the zshrc_alias and zshrc_functions files. You can also add you own alias or functions!

Your terminal will now look like this, but with `medialab` replaced by your user name:

![this is what your terminal will look like!](https://raw.githubusercontent.com/NMAAHC/zshrc/main/terminal.png)

If you are having issues type `ls -lahG ~` and check to see that your the symlinks for the zsh files have been created:

![this is what your the zsh symlinks shoudl look like!](https://raw.githubusercontent.com/NMAAHC/zshrc/main/zsh_symlinks.png)
