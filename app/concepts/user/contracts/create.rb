# frozen_string_literal: true

class User::Contract
  class Create < Reform::Form
    include Reform::Form::ActiveModel
    include Reform::Form::ActiveModel::FormBuilderMethods

    property :email
    property :password
    property :password_confirmation
    property :admin
    property :active
  end
end
