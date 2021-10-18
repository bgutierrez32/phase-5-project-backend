class ServiceListsController < ApplicationController
    def index
        render json: ServiceList.all
    end

    def show
        service_list = ServiceList.find_by(id: params(:id))
        if service_list
            render json: service_list, status: :ok
        else
            render json: {error: "Service List not found! :("}, status: :not_found
        end
    end
end
