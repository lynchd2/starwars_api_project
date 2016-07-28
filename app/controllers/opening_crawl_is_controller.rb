class OpeningCrawlIsController < ApplicationController

  def new
    @film = OpeningCrawlI.get_film_opening
    @people = Person.get_people
    @planets = Planet.get_planets
    @vehicles = Vehicle.get_vehicles
    @starships = Starship.get_starships
    @species = Species.get_species
    @intro = OpeningCrawlI.new
  end

  def show
    @color = true
    @intro = OpeningCrawlI.find(params[:id])
  end


  def create
    @intro = OpeningCrawlI.create(opening_params)
    if @intro.save
      flash[:success] = "Your opening was saved!"
      redirect_to @intro
    else
      flash.now[:error] = "Something went wrong and it did not save :("
      render :new
    end
  end

  def index
    @intros = OpeningCrawlI.all
  end

  def edit
  end

  def update
  end

  def destroy 
  end

  def get_number
    @params = params
  end

  def send_text
    @number = params[:number]
    @intro = OpeningCrawlI.find(params[:id])
    @send_message = TwilioApi.new.send_message(@number, @intro.intro_words)
     if @send_message
       flash[:success] = "reminder sent"
       redirect_to opening_crawl_is_path
     else
       flash[:error] = "Something went wrong..."
       render :get_number
     end
  end


  private


  def opening_params
    params.require(:opening_crawl_i).permit(:intro_words)
  end
end
