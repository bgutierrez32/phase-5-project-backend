class AppointmentsController < ApplicationController

    def index
        render json: Appointment.all
    end

    def show
        appointment = Appointment.find_by(id: params(:id))
        if car
            render json: appointment, status: :ok
        else
            render json: {error: "Appointment not found! :("}, status: :not_found
        end
    end

    def create
        appointment = Appointment.new(appointment_create_params)
        if appointment.save
            # session[:user_id] = @currentUser.id
            render json: appointment, status: :ok
        else
            render json: {errors: appointment.errors.full_messages}
        end
    end

    private

    def appointment_create_params
        params.permit(:car_id, :shop_id, :date)
    end

end
