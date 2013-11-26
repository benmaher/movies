class Movie < ActiveRecord::Base


  scope :eighties, -> { where(year: 1980..1989) }

  # Movie.all

  # Movie.eighties
  def self.eighties
    self.where(year: 1980..1989)
  end

  def average_rating
    reviews.average(:rating)
  end

  def roles
    []
  end

  def reviews
    []
  end

end
