class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  after_create :enrich_user_profile

  private

  def enrich_user_profile
    UpdateUserJob.perform_later(id)
  end
end
