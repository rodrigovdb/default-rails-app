# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: {
    sign_in: 'login',
    sign_out: 'sair',
    password: 'senha'
  }

  scope '/usuarios' do
    get   '/desativar', to: 'users#form_unactivate',  as: :users_form_unactivate
    post  '/desativar', to: 'users#unactivate',       as: :users_unactivate
  end
  resources :users, path: 'usuarios', path_names: { new: 'cadastrar', edit: 'alterar', destroy: 'excluir' }

  root 'application#mock'
end