sudo apt-get update

# install zsh & ohmyzsh
sudo apt install zsh -y
chsh -s $(which zsh)
# need to run:
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zshrc, tmux, vimrc
sudo ln -s $HOME/configs/.zshrc $HOME/.zshrc
sudo ln -s $HOME/configs/.vimrc_colemak $HOME/.vimrc
sudo ln -s $HOME/configs/.tmux.conf_colemak $HOME/.tmux.conf

#fzf fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# docker
sudo apt remove docker docker-engine docker.io containerd runc
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world

# nginx
sudo apt install nginx
sudo ufw allow 'Nginx Full'
sudo systemctl status nginx

# general
sudo apt install direnv
