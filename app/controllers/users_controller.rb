# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :validate_admin, except: %i[edit_password update_password]
  before_action :set_user, only: %i[show edit update destroy]
  before_action :set_current_user, only: %i[edit_password update_password]

  def index
    @users = User.all.order(:email).page(params[:page]).per(10)
  end

  def show; end

  # GET /users/new
  def new
    @user = User.new
  end

  def edit; end

  def edit_password; end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: 'Usuário cadastrado com sucesso'
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: 'Usuário atualizado com sucesso.'
    else
      render :edit
    end
  end

  def update_password
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      bypass_sign_in(@user)
      redirect_to root_path, notice: 'Senha alterada com sucesso.'
    else
      render 'edit_password'
    end
  end

  def destroy
    @user.destroy

    redirect_to users_url, notice: 'Usuário excluído com sucesso'
  end

  def form_unactivate
    @users = User.where(active: true).order(:email)
  end

  def unactivate
    User.where(id: params[:users]).update(active: false)

    redirect_to users_url, notice: 'Usuario(s) desativado(s) com sucesso.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def set_current_user
    @user = current_user
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    new_params = params.require(:user).permit(:email, :password, :password_confirmation, :manager, :active)

    unless params[:change_password_flag] == 'true'
      new_params.delete(:password)
      new_params.delete(:password_confirmation)
    end

    new_params
  end
end
