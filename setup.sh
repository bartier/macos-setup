# Home-brew
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Git setup
git config --global user.name "Vitor Anjos"
git config --global user.email "vitor.menezes@hash.com.br"

brew install jq
brew install awscli
brew install htop
brew install tree
brew install wget
brew install kubectx
brew install kube-ps1
brew install warrensbox/tap/tfswitch
brew install tfsec
brew install pre-commit
brew install helm
brew install ipcalc

brew install --cask authy
brew install --cask spotify
brew install --cask discord
brew install --cask mongodb-compass
brew install --cask slack
brew install --cask docker
brew install --cask google-cloud-sdk
brew install --cask rectangle
brew install --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask google-chrome

# https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command

# Dock settings

# Show recent apps (false)
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

# Set icon size to 66
defaults write com.apple.dock "tilesize" -int "66" && killall Dock

# Autohide dock
defaults write com.apple.dock "autohide" -bool "true" && killall Dock
defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock

# Instant dock animation
defaults write com.apple.dock autohide-time-modifier -float 0.15;killall Dock

cd ~
wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases