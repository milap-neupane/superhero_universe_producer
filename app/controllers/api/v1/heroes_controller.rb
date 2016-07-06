# Super hero controller
class Api::V1::HeroesController < ::ApplicationController
  def index
    @heroes = Hero.all
    render status: 200 ,json: @heroes
  end
end
