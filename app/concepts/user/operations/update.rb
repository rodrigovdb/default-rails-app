# frozen_string_literal: true

class User::Update < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(User, :find)
    step Contract::Build(constant: User::Contract::Update)
  end

  step Nested(Present)
  step Contract::Validate(key: :user)
  step Contract::Persist()
end
