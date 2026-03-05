echo "installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

echo "installing sdkman"
curl -s "https://get.sdkman.io" | bash

echo "installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "linking .zshrc"
if [ -f ~/.zshrc ]; then
    echo ".zshrc exists removing"
    rm ~/.zshrc
fi
ln -s ~/dotfiles/.zshrc ~/.zshrc

echo "linking .vimrc"
if [ -f ~/.vimrc ]; then
    echo ".vimrc exists removing"
    rm ~/.vimrc
fi
ln -s ~/dotfiles/.vimrc ~/.vimrc

echo "linking .tmux.conf"
if [ -f ~/.tmux.conf ]; then
    echo ".tmux.conf exists removing"
    rm ~/.tmux.conf
fi
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf