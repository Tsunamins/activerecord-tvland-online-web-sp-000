class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name 
    first_n = self.first_name 
    last_n = self.last_name
    
    "#{first_n} #{last_name}"
  end
  
  def list_roles
    actor_shows = self.shows.pluck(:name) 
    actor_chars = self.characters.pluck(:name)
    actor_chars.push(actor_shows)
    
    
  end 
  
  
  
end