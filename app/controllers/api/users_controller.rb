module Api
  class UsersController < ActionController::API
    def index
      render json: ::UserRepresenter.new(::User.ordered).as_collection
    end
  end
end

