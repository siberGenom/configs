sudo apt-get update
sudo apt-get install curl npm nodejs wget git vim tmux zsh curl xclip gnome-shell-extensions-gpaste gpaste -y

# install zsh & ohmyzsh
chsh -s $(which zsh)
# need to log in & log out
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .vimrc $HOME
cp .tmux.conf $HOME
cp .zshrc $HOME

mkdir .vim
mkdir .vim/colors

# install zenburn
git clone https://github.com/jnurmine/Zenburn.git 
mv Zenburn/colors/zenburn.vim ~/.vim/colors
sudo rm -r Zenburn

#fzf fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

