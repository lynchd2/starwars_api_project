# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    Tatooine::Person.list.each do |person|
      Person.find_or_create_by(name: person.name)
    end

    Tatooine::Planet.list.each do |planet|
      Planet.find_or_create_by(name: planet.name)
    end

    Tatooine::Vehicle.list.each do |vehicle|
      Vehicle.find_or_create_by(name: vehicle.name)
    end

    Tatooine::Species.list.each do |specie|
      Species.find_or_create_by(name: specie.name)
    end
    Tatooine::Starship.list.each do |starship|
      Starship.find_or_create_by(name: starship.name)
    end


    OpeningCrawlI.find_or_create_by(intro_words: "It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire. During the battle, Rebel spies managed to steal secret plans to the Empire's ultimate weapon, the DEATH STAR, an armored space station with enough power to destroy an entire planet. Pursued by the Empire's sinister agents, Princess Leia races home aboard her starship, custodian of the stolen plans that can save her people and restore freedom to the galaxy....")