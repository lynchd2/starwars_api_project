class OpeningCrawlIsController < ApplicationController

  def new
    @film = OpeningCrawlI.get_film_opening
    @people = OpeningCrawlI.get_people
    @planets = OpeningCrawlI.get_planets
    @vehicles = OpeningCrawlI.get_vehicles
    @starships = OpeningCrawlI.get_starships
    @species = OpeningCrawlI.get_species
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


  private


  def opening_params
    params.require(:opening_crawl_i).permit(:intro_words)
  end
end
