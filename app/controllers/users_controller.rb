# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :validate_admin, except: %i[edit_password update_password]
  before_action :validate_owner, only: %i[update_password]

  def index
    run User::Index
  end

  def show; end

  def new
    run User::Create::Present
  end

  def edit
    run User::Update::Present
  end

  def edit_password
    params[:id] = current_user.id

    run User::UpdatePassword
  end

  def admin_edit_password
    run User::UpdatePassword

    render :edit_password
  end

  def create
    run User::Create do |result|
      flash[:notice] = "#{result['model'].email} cadastrado com sucesso."

      redirect_to users_path and return
    end

    render :new
  end

  def update
    run User::Update do |result|
      flash[:notice] = "#{result['model'].email} atualizado com sucesso."

      redirect_to users_path and return
    end

    render :edit
  end

  def update_password
    run User::UpdatePassword do |result|
      flash[:notice] = "Senha atualizada com sucesso."

      redirect_to (current_user.admin? ? users_path : root_path) and return
    end

    render :edit_password
  end

  def destroy
    run User::Destroy

    redirect_to users_url, alert: 'Usuário excluído com sucesso'
  end

  def form_unactivate
    @users = User.where(active: true).order(:email)
  end

  def unactivate
    User.where(id: params[:users]).update(active: false)

    redirect_to users_url, notice: 'Usuario(s) desativado(s) com sucesso.'
  end
end
