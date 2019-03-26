class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
    #<Pet id: nil, address: nil, name: nil, healthiness: nil, found_on: nil, species: nil, created_at: nil, updated_at: nil, found_by: nil>
  end

  def create
    @pet = Pet.new(pet_params)
    # Pet.new(name: "Pretzel", address: "Shanghai", species: "dog")
    @pet.found_on = Time.now
    @pet.save

    redirect_to pets_path

  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(edit_params)

    redirect_to @pet
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pets_path

  end

  private

  def pet_params
    # params[:pet]
    params.require(:pet).permit(:name, :address, :species, :healthiness)
  end

  def edit_params
    params.require(:pet).permit(:found)
  end
end
