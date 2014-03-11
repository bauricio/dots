#!/bin/bash


#### Development basics ####
# xcode command line tools
if ! type brew > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

brew install git

brew tap phinze/cask
brew install brew-cask

git clone https://github.com/bauricio/dots ~/.dots
~/.dots/rake install 

#Download vagrant 
brew cask install vagrant

# sublime
brew cask install sublime-text

# iterm2
brew cask install iterm2

# intellij
brew cask install intellij-idea

brew install tree
brew install ack
brew install bash-completion

# use solarize colors on iterm2
# set global shortcut for iterm2
# make (alt ->) jump words
# Caps->Control
# F keys as functions
defaults write com.apple.keyboard.fnState -boolean true


#### Productivity ####

# screen hero
brew cask install screenhero

# evernote
brew cask evernote

# caffeine
brew cask caffeine

# alfred
brew cask install alfred
# change shortcut (remove spotlight default and replace by alfred)
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Delete AppleSymbolicHotKeys:64' > /dev/null 2>&1
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Add AppleSymbolicHotKeys:64:enabled bool false'
defaults write com.alfredapp.Alfred hotKey -int 64

# The Unarchiver
brew cask install the-unarchiver

# Dropbox
brew cask install dropbox

# set dock to hide and minify
# clear dock to have only:


#### Fun ####
brew cask install steam
