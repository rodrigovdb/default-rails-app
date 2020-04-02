# frozen_string_literal: true

class User::Contract
  class Update < Reform::Form
    include Reform::Form::ActiveModel
    include Reform::Form::ActiveModel::FormBuilderMethods

    property :email, validates: { presence: true }
    property :admin
    property :active
  end
end
