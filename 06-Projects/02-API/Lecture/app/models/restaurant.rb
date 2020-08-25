class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :comments

  def toto
    'hello'
  end
end
