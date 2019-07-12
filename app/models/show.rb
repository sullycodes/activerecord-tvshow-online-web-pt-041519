class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show 
    show = self.where(":rating ?", self.highest_rating)
    # show = self.highest_rating
    show.name
  end
  
end