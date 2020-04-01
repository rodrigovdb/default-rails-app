# frozen_string_literal: true

class User::Destroy < Trailblazer::Operation
  step Model(User, :find)
  step :delete!

  def delete!(*, model:, **)
    model.destroy
  end
end

