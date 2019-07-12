class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show 
    self.where(highest_rating)
    # show = self.highest_rating
    # show.name
  end
  
end