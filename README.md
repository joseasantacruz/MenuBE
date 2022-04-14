# Menu Management Backend

## Development Enviroment for BairesDev Menu Management Backend


This is just a development envrioment for BairesDev Menu Management Backend project. Please follow the install instructions.

### Instructions and Requirements
https://drive.google.com/file/d/1YMQ4EmSPG0F5C02RQCmii5AblgWNk4Aw/view


### Assumptions
1.  

### API Enpoints


### Install
- RVM
 ```sh
brew install gnupg gnupg2 
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB 
\curl -sSL https://get.rvm.io | bash -s stable
rvm requirements
```
- Ruby
```sh
rvm install ruby
```
- Rails
```sh
gem install rails
```
- Postgres
```sh
gem install pg -- --with-pg-config=/usr/local/bin/pg_config
```
- Clone this repo:
```sh
git clone git@github.com:joseasantacruz/MenuBE.git
```
- bundle install
```sh
cd MenuBE
bundle install
```
- create db
```sh
rake db:setup
```
- migrate db
```sh
rails db:migrate
``` 
- run server
```sh
rails s
``` 
