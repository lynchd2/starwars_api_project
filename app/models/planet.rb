class Planet < ActiveRecord::Base

   def self.get_planets
    Planet.all.map do |planet|
      planet.name
    end
  end
  
end
