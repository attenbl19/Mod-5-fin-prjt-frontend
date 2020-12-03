class PetTypesController < ApplicationController


  # GET /pet_types
  def index
    @pet_types = PetType.all

    render json: @pet_types
  end


end
