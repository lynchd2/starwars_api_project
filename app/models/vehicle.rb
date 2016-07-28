class Vehicle < ActiveRecord::Base

    def self.get_vehicles
    Vehicle.all.map do |vehicle|
      vehicle.name
    end
  end
  
end
