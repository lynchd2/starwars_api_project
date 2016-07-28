class Species < ActiveRecord::Base

  def self.get_species
    Species.all.map do |species|
      species.name
    end
  end

end
