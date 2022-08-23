# Rosetta 2 (M1 support for x86)
sudo softwareupdate --install-rosetta

# Install Home-brew
if test ! $(which brew); then
  echo "Installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Git setup
echo "Setting up git"
git config --global user.name "Vitor Anjos"
git config --global user.email "bartier@users.noreply.github.com"

# Kubernetes PS1
echo "Setting up Kubernetes PS1"
git clone https://github.com/jonmosco/kube-ps1.git
cp kube-ps1/kube-ps1.sh ~/kube-ps1.sh

echo "Setting up brew packages"
brew bundle -f
brew bundle cleanup

# Dock settings file
echo "Setting up Dock"
cp com.apple.dock.plist ~/Library/Preferences/com.apple.dock.plist
killall Dock

# Add kubectl_aliases to home folder
echo "Setting up kubectl aliases"
wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases -O ~/.kubectl_aliases

# vim config file
echo "Setting up .vimrc"
cp .vimrc ~/.vimrc

# zsh config file
echo "Setting up .zshrc"
cp .zshrc ~/.zshrc

# iTerm2
# Import file manually
echo "Install iTerm2 manually to finish the setup"

# zsh install
echo "Install zsh manually to finish the setup"
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ZSH plugin command-time
echo "Setting up zsh plugin for command-time"
git clone https://github.com/popstas/zsh-command-time.git ~/.oh-my-zsh/custom/plugins/command-time

