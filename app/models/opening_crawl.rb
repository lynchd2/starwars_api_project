class OpeningCrawl < ActiveRecord::Base

  validates :intro_words, length: { minimum: 5 }

  def self.get_film_opening
    Tatooine::Film.get(1)
  end

  
end
