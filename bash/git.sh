#!/bin/sh

curl -o ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
if [ "$?" -ne 0 ]; then echo "git-prompt.sh download failed"; exit 1; fi

curl -o ~/.git-completion.sh https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
if [ "$?" -ne 0 ]; then echo "git-completion.sh download failed"; exit 1; fi

touch ~/.bash_profile
echo "\n# Begin Git" >> ~/.bash_profile
echo "source ~/.git-prompt.sh" >> ~/.bash_profile
echo "source ~/.git-completion.sh" >> ~/.bash_profile
echo 'PS1='"'"'[\u@\h \W$(__git_ps1 " (%s)")]\$ '"'"'' >> ~/.bash_profile
echo "# End Git" >> ~/.bash_profile
