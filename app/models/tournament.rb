class Tournament < ActiveRecord::Base
  validates :start_date, :name, :end_date, presence:true
end
