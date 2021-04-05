class Api::V1::AuthController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: { user: user, jwt: token, success: "Welcome back, #{user.fullname}" }
    else
      render json: { failure: 'Log in failed! Email or password is invalid!' }
    end
  end

  def auto_login
    if logged_in_user
      render json: logged_in_user
    else
      render json: { errors: 'No user logged in' }
    end
  end
end
