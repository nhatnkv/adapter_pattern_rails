class HeroesController < ApplicationController
  def index
    response = Dota2::HeroesAdapter.new().execute
    if response.success?
      @heroes = response.data
      flash[:success] = "Get heroes information successful"
    else
      flash[:danger] = "Something went wrong #{response.errors_message}"
    end
  end
end
