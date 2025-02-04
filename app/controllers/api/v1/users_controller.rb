# Description: Controller for the User model

module Api
  module V1
    # implements the Api::V1::UsersController controller
    class UsersController < ApplicationController
      # before_action :authorized, only: [:index]
      def index
        @users = User.all
        render json: @users
      end

      def create
        user = User.create(permitted_params)
        if user.valid?
          payload = { user_id: user.id }
          token = encode_token(payload)
          render json: { user:, jwt: token }
        else
          render json: { errors: user.errors.full_messages }, status: :not_acceptable
        end
      end

      private

      def permitted_params
        params.permit(:fullname, :email, :gender, :password, :age)
      end
    end
  end
end
