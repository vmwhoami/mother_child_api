class ApplicationController < ActionController::API
 
  def encode_token(payload)
    JWT.encode(payload,'adam')
  end

  def auth_header
    request.headers['Authorization']
  end
  


 def decoded_token
   if auth_header
    token = auth_header.split(' ')[1]
 
    begin
      JWT.decode(token,'adam',true, algorithm: 'HS256')
    rescue => JWT::DecodeError
      []
    end
   end
 end
 

  def session_user
    decoded_hash = decoded_token
    if !decoded_hash.empty?
      user_id = decoded_hash[0]['user_id']
      @user = User.find_by(id: user_id)
    else
      nil
    end
  end
  
end
