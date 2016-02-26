class Concert < ActiveRecord::Base
  validates :artist, :venue, :city, :price, :description, :date, presence: true

  def self.today_concerts
    from = DateTime.now.beginning_of_day
    to = DateTime.now.end_of_day

     where(date: from..to)
  end

  def self.actual_month_concerts
    from = DateTime.now.end_of_day
    to = DateTime.now.end_of_month

     where(date: from..to)
  end
end
