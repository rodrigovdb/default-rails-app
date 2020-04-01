# frozen_string_literal: true

class User::Contract
  class UpdatePassword < Reform::Form
    include Reform::Form::ActiveModel
    include Reform::Form::ActiveModel::FormBuilderMethods

    property :password, validates: { presence: true, confirmation: true }
    property :password_confirmation, virtual: true
  end
end
