class OpeningCrawlI < ActiveRecord::Base

  def self.get_film_opening
    Tatooine::Film.get(1)
  end

  def self.get_people
    Person.all.map do |person|
      person.name
    end
  end


  def self.get_planets
    Planet.all.map do |planet|
      planet.name
    end
  end

  def self.get_vehicles
    Vehicle.all.map do |vehicle|
      vehicle.name
    end
  end

  def self.get_starships
    Starship.all.map do |starship|
      starship.name
    end
  end

  def self.get_species
    Species.all.map do |species|
      species.name
    end
  end
  
end
