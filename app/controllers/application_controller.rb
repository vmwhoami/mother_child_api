class ApplicationController < ActionController::API
  def encode_token(payload)
    JWT.encode(payload, 'adam')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    return unless auth_header

    token = auth_header.split(' ')[1]
    begin
      JWT.decode(token, 'adam', true, algorithm: 'HS256')
    rescue JWT::DecodeError
      []
    end
  end

  def session_user
    decoded_hash = decoded_token
    return if decoded_hash.empty?

    user_id = decoded_hash[0]['user_id']
    @user = User.find_by(id: user_id)
  end

  def logged_in?
    session_user.nil?
  end

  def require_login
    render json: { message: 'Please login' }, status: :authorised unless logged_in?
  end
end
