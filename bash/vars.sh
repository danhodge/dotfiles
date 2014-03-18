#!/bin/sh

touch ~/.bash_profile

echo "\n# Begin Variables" >> ~/.bash_profile
echo 'export PATH=$PATH:~/bin' >> ~/.bash_profile
echo 'export RAILS_ENV=development' >> ~/.bash_profile
echo "# End Variables" >> ~/.bash_profile
