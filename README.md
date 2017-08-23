# common
Store common scripts 

#setup
sudo apt-get install python
sudo apt-get install python-pip
sudo apt-get install vim-nox-py2

git clone git@github.com:scheratan-projects/common.git
./get_vundle.sh
rm ../.bashrc
./set_links.sh

vim :PluginInstall

