DEPLOY_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

mv ~/.bash_profile ~/.old.bash_profile
mv ~/.vimrc ~/.old.vimrc

cp $DEPLOY_PATH/.bash_profile ~/.bash_profile
cp $DEPLOY_PATH/.vimrc ~/.vimrc
