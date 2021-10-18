class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        if current_user
            render json: current_user, status: :ok
        else
            render json: {}, status: :unauthorized
        end
    end
    
    def create
        user = User.create(user_create_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
          else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
          end
    end

    def destroy
        user_destroy = User.find_by_id(params[:id])
        session.delete(:user_id)
        user_destroy.destroy
        render json: {session_user: session[:user_id]}
    end
    
    private

    def user_create_params
        params.permit(:name, :email, :username, :password, :password_confirmation)
    end

end
