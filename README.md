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

Create a `.env` file with
```bash
$ cp .env_sample .env
```

Up everything with
```bash
$ docker-compose up -d
$ docker-compose run --rm web rake db:create db:migrate db:seed
```

and access via
```
http://localhost:3000
```

## Customizing

**.env**
```
POSTGRES_DB=your-app-name
```

**docker-compose.yml**
```
web:
  image: your-app-name
```

**config/cable.yml**
```
production:
  channel_prefix: <your-app-name>_production
```

**config/application.rb**
```
module MyAppName
```

**package.json**
```
  "name": "my-app-name"
```

## Routes
```ruby
                   Prefix Verb   URI Pattern                                                                              Controller#Action
         new_user_session GET    /login(.:format)                                                                         devise/sessions#new
             user_session POST   /login(.:format)                                                                         devise/sessions#create
     destroy_user_session DELETE /sair(.:format)                                                                          devise/sessions#destroy
        new_user_password GET    /senha/new(.:format)                                                                     devise/passwords#new
       edit_user_password GET    /senha/edit(.:format)                                                                    devise/passwords#edit
            user_password PATCH  /senha(.:format)                                                                         devise/passwords#update
                          PUT    /senha(.:format)                                                                         devise/passwords#update
                          POST   /senha(.:format)                                                                         devise/passwords#create
    users_form_unactivate GET    /usuarios/desativar(.:format)                                                            users#form_unactivate
         users_unactivate POST   /usuarios/desativar(.:format)                                                            users#unactivate
       user_edit_password GET    /usuarios/alterar-senha(.:format)                                                        users#edit_password
     user_update_password PUT    /usuarios/alterar-senha(.:format)                                                        users#update_password
                    users GET    /usuarios(.:format)                                                                      users#index
                          POST   /usuarios(.:format)                                                                      users#create
                 new_user GET    /usuarios/cadastrar(.:format)                                                            users#new
                edit_user GET    /usuarios/:id/alterar(.:format)                                                          users#edit
                     user GET    /usuarios/:id(.:format)                                                                  users#show
                          PATCH  /usuarios/:id(.:format)                                                                  users#update
                          PUT    /usuarios/:id(.:format)                                                                  users#update
                          DELETE /usuarios/:id(.:format)                                                                  users#destroy
                     root GET    /                                                                                        application#mock
       rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
```
