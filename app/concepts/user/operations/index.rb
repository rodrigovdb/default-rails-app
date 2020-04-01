# frozen_string_literal: true

class User::Index < Trailblazer::Operation
  step :model!
  step :paginate!

  def model!(options, **)
    options['model'] = User.all.order(:email)
  end

  def paginate!(options, model:, params:, **)
    options['model'] = model.page(params[:page]).per(10)
  end
end
