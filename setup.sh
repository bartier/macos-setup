# vim config file
echo "Setting up .vimrc"
cp .vimrc ~/.vimrc

# git config file
echo "Setting up git"
cp .gitconfig ~/.gitconfig

# zsh config file
echo "Setting up .zshrc"
cp .zshrc ~/.zshrc

# Add kubectl_aliases
echo "Setting up kubectl aliases"
wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases -O ~/.kubectl_aliases

# ZSH plugin command-time
git clone https://github.com/popstas/zsh-command-time.git ~/.oh-my-zsh/custom/plugins/command-time


# Kubernetes PS1 - info in the terminal
echo "Setting up Kubernetes PS1"
git clone https://github.com/jonmosco/kube-ps1.git
cp kube-ps1/kube-ps1.sh ~/kube-ps1.sh

# Dock settings file
echo "Setting up Dock"
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
killall Dock

# Rosetta 2 (M1 support for x86)
sudo softwareupdate --install-rosetta

# Git setup
echo "Setting up git"
git config --global user.name "Vitor Anjos"
git config --global user.email "bartier@users.noreply.github.com"

# Install Home-brew
if test ! $(which brew); then
  echo "Installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Setting up brew packages"
brew bundle -f
brew bundle cleanup

# oh-my-zsh install
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# iTerm2
# Import file manually
echo "Install iTerm2 manually to finish the setup"
