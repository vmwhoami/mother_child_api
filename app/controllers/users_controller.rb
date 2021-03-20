class UsersController < ApplicationController
  def create
    user = User.new(permitted_params)
  end

  
  private
  def permitted_params
    params.require(:user).permit(:fullname, :email, :gender, :password)
  end

end
