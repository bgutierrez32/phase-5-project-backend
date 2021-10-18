class CarsController < ApplicationController

    def index
        render json: Car.all
    end

    def show
        car = Car.find_by(id: params(:id))
        if car
            render json: car, status: :ok
        else
            render json: {error: "Car not found! :("}, status: :not_found
        end
    end

    def create
        car = Car.new(create_car_params)
        byebug
        car.user_id = User.first.id
        if car.save
            byebug
            # session[:user_id] = @currentUser.id
            render json: car, status: :ok
        else
            byebug
            render json: {errors: car.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def create_car_params
        params.permit(:year, :make, :model, :insurance, :user_id)
    end

end
