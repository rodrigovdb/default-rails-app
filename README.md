# Rails Base App

Fork me! I'm a base app to start any other rails app. Nice to start a new project with all dependencies. It includes:

* Fontawesome
* materialize
* materialize-icons
* devise authentication
  * additional fields: boolean admin and boolean active
* postgres database
* kaminari
* trailblazer
* dry-validation
* reform-rails

and some dev stuffs like

* pry
* bullet
* rubocop
* simplecov
* reek
* factory_bot_rails
* faker

## Running

Up everything with
```bash
$ docker-compose up -d
$ docker-compose run --rm web rake db:create db:migrate db:seed
```

and access via
```
http://localhost:3000
```
