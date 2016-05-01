brew tap homebrew/homebrew-php
brew install php54
brew unlink php54
brew install php55
brew unlink php55
brew install php56
brew unlink php56
brew install php70

brew install nginx

# all .dev domains servered direct. no need to edit /etc/hosts file.
brew install dnsmasq
mkdir -pv $(brew --prefix)/etc/
echo 'address=/.dev/127.0.0.1' > $(brew --prefix)/etc/dnsmasq.conf
sudo cp -v $(brew --prefix dnsmasq)/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons
sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
sudo mkdir -v /etc/resolver
sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/dev'

brew install beanstalkd

