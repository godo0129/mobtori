# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* url
https://744816150266.signin.aws.amazon.com/console9

*HP

https://mobtori.herokuapp.com/

* Ruby version
2.5.1

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## 開発環境作成手順
* cd ~/.ssh
* ssh-keygen
* ls
* id_rsa.pub を開く
* githubページで鍵を登録
* ssh -T git@github.com //確認
* git clone git@github.com:godo0129/mobtori.git
* gem install rails -v 5.1.1
* rvm install ruby 2.5.1
* sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
* test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
* test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
* test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
* echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
* brew install postgresql
* bundle install --without production --path vendor/bundle
