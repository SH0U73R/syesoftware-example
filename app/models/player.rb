class Player < ActiveRecord::Base
  validates :name, :email, presence: true
end
