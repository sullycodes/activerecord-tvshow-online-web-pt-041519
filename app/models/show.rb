class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show 
    hr = self.highest_rating
    self.find_by(rating: hr)
  end
  
  def self.lowest_rating
  end
  
end