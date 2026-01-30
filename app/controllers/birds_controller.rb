class BirdsController < ApplicationController
  before_action :set_bird, only: %i[ show edit update destroy]

  def index
    @birds = Bird.all # @ = instance variable, hands it to view automatically
  end

  def show
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    if @bird.save # validate, save if success, save returns bool, if i put bang! then it raises
      redirect_to @bird # automatically goes to "show" of that bird
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @bird.update(bird_params)
      redirect_to @bird
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bird.destroy
    redirect_to birds_path
  end
    
  private
    def set_bird
      @bird = Bird.find(params[:id])
    end

      
  # This filters the incoming param and make sure there is bird array with param name
  # other obj are ignored
    def bird_params
      params.expect(bird: [ :name])
    end
end
