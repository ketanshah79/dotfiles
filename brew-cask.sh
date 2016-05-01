#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install dropbox
brew cask install gyazo
brew cask install 1password
brew cask install rescuetime
brew cask install flux

# dev
brew cask install iterm2
brew cask install sublime-text
brew cask install imagealpha
brew cask install imageoptim
brew cask install atom
brew cask install chrome-devtools
brew cask install sequel-pro

# fun
brew cask install miro-video-converter
brew cask install horndis               # usb tethering

# browsers
brew cask install google-chrome
brew cask install firefox
brew cask install torbrowser

#misc
brew cask install battery-gaurdian
brew cask install bitbar
brew cask install caffeine
brew cask install calibre

# less often
brew cask install disk-inventory-x
brew cask install screenflow
brew cask install vlc
brew cask install gpgtools
brew cask install licecap
brew cask install utorrent

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package && qlmanage -r
brew cask install the-unarchiver




# Not on cask but I want regardless.

# File Multi Tool 5
# Phosphor
