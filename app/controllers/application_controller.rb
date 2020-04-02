# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  layout :determine_layout

  def mock; end

  def determine_layout
    return 'login' unless current_user

    request.xhr? ? false : 'application'
  end

  def validate_admin
    redirect_to_unauthorized unless current_user.admin?
  end

  def validate_owner
    return if current_user.admin?

    redirect_to_unauthorized unless current_user.id == params[:id].to_i
  end

  private

  def redirect_to_unauthorized
    flash[:alert] = 'Não autorizado'

    redirect_to root_path
  end
end
