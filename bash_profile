echo ".bash_profile loaded"
if [ -f "$HOME/.profile" ]; then
    source ~/.profile
fi
source .bashrc
