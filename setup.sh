# Home-brew
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Git setup
git config --global user.name "Vitor Anjos"
git config --global user.email "bartier@users.noreply.github.com"

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
brew install derailed/k9s/k9s

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

# Dock settings
#TODO


#cd ~
#wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases
