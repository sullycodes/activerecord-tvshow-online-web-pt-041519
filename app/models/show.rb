class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show 
    # self.where("rating = ?", self.highest_rating)
    hr = self.highest_rating
    self.find_by(:rating, hr)
  end
  
end