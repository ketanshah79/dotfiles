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

brew install beanstalkd;



/usr/bin/env php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
/usr/bin/env php -r "if (hash_file('SHA384', 'composer-setup.php') === 'a52be7b8724e47499b039d53415953cc3d5b459b9d9c0308301f867921c19efc623b81dfef8fc2be194a5cf56945d223') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
/usr/bin/env php composer-setup.php
/usr/bin/env php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

composer global require "squizlabs/php_codesniffer=*"
composer global require "phpmd/phpmd=@stable"
composer global require fabpot/php-cs-fixer

