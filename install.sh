#!/bin/sh
# @author David Spreekmeester
# @url https://github.com/aapit/osx-install-script
# PΞɌSʘNΛL ʘSX PɌʘVISIʘNING SCɌIPT

# ! Make this file executable by running: chmod +x install.sh

# Install Xcode command line tools
xcode-select --install

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Run brew doctor to check for issues
brew doctor

brew update
brew cleanup

# Install dev tools
brew install npm
brew install mackup
brew install git-flow-avh
brew install libssh2
brew install wget
brew install the_silver_searcher
brew install awscli
brew install watch
brew install homebrew/php/composer
brew install nmap
brew install mysql
brew install phpunit
brew install httpie
brew install wp-cli
brew install vault

# For working remotely by SSL
brew install osxfuse

# For GPG signing
brew install gnupg gnupg2 gpg-agent pinentry-mac

# For handy Github API access on CLI
brew install hub

# Install caskroom so we can install applications
brew install caskroom/cask/brew-cask

# Tap into alternate versions of apps (e.g. Chrome Canary)
brew tap caskroom/versions

# Install cask applications __________________________

# Virtualbox for Roots Trellis, deployment for Bedrock Wordpress
brew cask install virtualbox

# This should be done through the App Store, because of the license
# brew cask install 1password

# (2 May 2016: This installs Arq 4, and I have a v5 upgrade
# which is not in Brew yet)
# brew cask install arq

brew cask install alfred
brew cask install controlplane
brew cask install dropbox
brew cask install macvim
brew cask install spotify
brew cask install iterm2
brew cask install vlc
brew cask install google-drive
brew cask install skype
brew cask install nvalt
brew cask install torbrowser
brew cask install cyberduck
brew cask install little-snitch
brew cask install path-finder
brew cask install slack
brew cask install harvest
brew cask install knox
brew cask install bartender
brew cask install steam
brew cask install airfoil
brew cask install hazel
brew cask install caffeine
brew cask install resilio-sync
brew cask install vmware-fusion
brew cask install sequel-pro
brew cask install paw
# gcloud client e.d. voor Kubernetes / Docker hosting
brew cask install google-cloud-sdk

# Don't think I need these after all (July 2016)
# brew cask install gpgtools

# To build native OSX apps
brew cask install platypus

# For containerization
# Disabled for now, since I've switched to the Docker beta.
# brew cask install dockertoolbox

brew linkapps

# Make Alfred search in brew cask install location
brew cask alfred

# Cleanup downloads
brew cask cleanup

# Install node packages
npm install -g n
npm install -g gulp
npm install -g bower
npm install -g jshint

# Install ruby gems
sudo gem install scss-lint
sudo gem install semver
sudo gem install capistrano
sudo gem install travis

brew install fish

# Make Fish Shell your default shell
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish


# ---------------- Not installed
# brew cask install firefox-nightly
# brew cask install google-chrome
# brew cask install google-chrome-canary
# brew cask install adium
# brew install ios-webkit-debug-proxy

# april 2017: I no longer install Firefox through Cask,
# since the 1password extension needs it to be in ~?/Applications
# brew cask install firefox

# Put settings and stuff back into place
# This could only be done when Dropbox is installed and the files are synced!
# mackup restore


# ________________ @TODO
# - Composer
# - SSILegacyParser setting Apache
# - includes module apache
# - nvm
# - adjust my.conf and take strict_tables setting off
# - Wunderlist (is not in Cask, apparently)
