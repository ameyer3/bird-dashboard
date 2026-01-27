class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    if @bird.save # validate, save if success
      redirect_to @bird
    end # else, back to form with entered info
  end

  # This filters the incoming param and make sure there is bird array with param name
  # other obj are ignored
  private
    def bird_params
      params.expect(bird: [ :name])
    end
end
