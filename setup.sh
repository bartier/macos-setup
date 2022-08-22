# Install Home-brew
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Git setup
git config --global user.name "Vitor Anjos"
git config --global user.email "bartier@users.noreply.github.com"

# ZSH plugin command-time
git clone https://github.com/popstas/zsh-command-time.git ~/.oh-my-zsh/custom/plugins/command-time

# Kubernetes PS1
git clone https://github.com/jonmosco/kube-ps1.git
cp kube-ps1/kube-ps1.sh ~/kube-ps1.sh

brew bundle -f
brew bundle --force cleanup

# Dock settings file
cp com.apple.dock.plist ~/Library/Preferences/com.apple.dock.plist

# Add kubectl_aliases to home folder
wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases -O ~/.kubectl_aliases

# vim config file
cp .vimrc ~/.vimrc

# zsh config file
cp .zshrc ~/.zshrc

# iTerm2
# Import file manually
