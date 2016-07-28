class OpeningCrawlI < ActiveRecord::Base

  def self.get_film_opening
    Tatooine::Film.get(1)
  end

  
end
