class Starship < ActiveRecord::Base

    def self.get_starships
    Starship.all.map do |starship|
      starship.name
    end
  end
  
end
