class AnimalSightingsController < ApplicationController

    def index
        animal_sightings = AnimalSighting.all
        render json: animal_sightings
    end

    def show 
        animal_sighting = AnimalSighting.find(params[:id])
        render json: animal_sighting
    end

    def create
        animal_sighting = AnimalSighting.create(animal_sighting_params)
        if animal_sighting.valid?
            render json: animal_sighting
        else
            render json: animal_sighting.errors
        end
    end

    def update
        animal_sighting = AnimalSighting.find(params[:id])
        animal_sighting.update(animal_sighting_params)
        if animal_sighting.valid?
            render json: animal_sighting
        else
            render json: animal_sighting.errors
        end
    end

    def destroy
        animal_sighting = AnimalSighting.find(params[:id])
        if animal_sighting.destroy
            render json: animal_sighting
        else
            render json: animal_sighting.errors
        end
    end

    private
    def animal_sighting_params
        params.require(:animal_sighting).permit(:latitude, :longitude, :date, :animal_id)
    end
end
