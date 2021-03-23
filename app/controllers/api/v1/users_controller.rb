class Api::V1::UsersController < ApplicationController
   def index
    @users = User.all
    render json: @users
  end
  
  
  def create
    user = User.new(permitted_params)
    if user.save
      :ok
    else
      :bad_request
    end
  end

  private

  def permitted_params
    params.permit(:fullname, :email, :gender, :password,:age)
  end
end
