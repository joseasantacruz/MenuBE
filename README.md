# Menu Management Backend

## Development Enviroment for BairesDev Menu Management Backend


This is just a development envrioment for BairesDev Menu Management Backend project. Please follow the install instructions.

### Instructions and Requirements
https://drive.google.com/file/d/1YMQ4EmSPG0F5C02RQCmii5AblgWNk4Aw/view


### Assumptions
1. The fields of each class were based on the Front-End test.
2. Basic endpoints are created for the CRUD (Create, Read, Update, Delete) of each class.
3. The json of the restaurant_data.json file is included in the potman collection that is added to the repository, in order to test its operation.

### API Enpoints

- Restaurants 
  - GET    /restaurants
  - POST   /restaurants
- Restaurant 
  - GET    /restaurants/:id
  - PATCH  /restaurants/:id
  - PUT    /restaurants/:id
  - DELETE /restaurants/:id
- Menus 
  - GET    /menus
  - POST   /menus
- Menu 
  - GET    /menus/:id 
  - PATCH  /menus/:id 
  - PUT    /menus/:id
  - DELETE /menus/:id
- Menu_items 
  - GET    /menu_items
  - POST   /menu_items
- Menu_item 
  - GET    /menu_items/:id
  - PATCH  /menu_items/:id
  - PUT    /menu_items/:id
  - DELETE /menu_items/:id

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
