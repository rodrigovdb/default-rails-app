# frozen_string_literal: true

class User < ApplicationRecord
  # # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :recoverable, :rememberable

  validates :email, presence: true, uniqueness: true

  validates :password, presence: true, confirmation: true,
                       unless: proc { |a| a.id }

  # Override to devise handle inactive users
  def active_for_authentication?
    super && active
  end
end
