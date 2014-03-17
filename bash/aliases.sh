#!/bin/sh

touch ~/.bash_profile

echo "\n# Begin Aliases" >> ~/.bash_profile
echo "alias cg='cd ~/git'" >> ~/.bash_profile
echo "alias e='exit'" >> ~/.bash_profile
echo "alias be='bundle exec'" >> ~/.bash_profile
echo "alias bip='bundle install --path vendor/bundle'" >> ~/.bash_profile
echo "alias ror='bundle exec rails'" >> ~/.bash_profile
echo "alias rs='bundle exec rspec'" >> ~/.bash_profile
echo "alias rk='bundle exec rake'" >> ~/.bash_profile
echo "# End Aliases" >> ~/.bash_profile
