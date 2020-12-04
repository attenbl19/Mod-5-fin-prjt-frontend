class PetsController < ApplicationController
  

  # GET /pets
  def index
    @pets = Pet.all

    render json: @pets
  end

  
end
