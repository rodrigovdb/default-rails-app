# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: {
    sign_in: 'login',
    sign_out: 'sair',
    password: 'senha'
  }

  scope '/usuarios' do
    get   '/desativar',     to: 'users#form_unactivate',  as: :users_form_unactivate
    post  '/desativar',     to: 'users#unactivate',       as: :users_unactivate

    get '/alterar-senha', to: 'users#edit_password',    as: :user_edit_password
    scope '/:id' do
      get '/alterar-senha', to: 'users#admin_edit_password',  as: :admin_user_edit_password
      put '/alterar-senha', to: 'users#update_password',      as: :user_update_password
    end
  end
  resources :users, path: 'usuarios', path_names: { new: 'cadastrar', edit: 'alterar', destroy: 'excluir' }

  root 'application#mock'
end
