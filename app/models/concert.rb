class Concert < ActiveRecord::Base
  validates :artist, :venue, :city, :price, :description, :date, presence: true
end
