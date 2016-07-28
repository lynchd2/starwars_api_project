class Person < ActiveRecord::Base
  
  def self.get_people
    Person.all.map do |person|
      person.name
    end
  end

end
