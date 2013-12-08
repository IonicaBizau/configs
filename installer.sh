echo "~ ~ ~ Installing config files ~ ~ ~"

echo "Clonning the repository ..."
git clone https://github.com/IonicaBizau/configs

echo "Entering in the downloaded folder."
cd configs

echo "Copying Johnny's apps ..."
sudo cp -r johnnysapps /

echo "Copying VIM files ..."
cp -r vim-files/.vim* ~/

echo "Installing Vundle ..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "Installing VIM plugins ..."
vim +BundleInstall +qall

echo "Finished. Clean up ..."
cd ..
rm -rf configs
