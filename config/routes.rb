# frozen_string_literal: true

Rails.application.routes.draw do
   namespace :api do
    namespace :v1 do
      resources :users 
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
      get "/user_is_authed", to: "auth#user_is_authed"

      get "/doctors", to: "doctors#index"
      get "/allapp", to: "appointmets#allapp"
      post "/myappointmets", to: "appointmets#index"
      post "/appointmets", to: "appointmets#create"
      delete "/appointmets", to: "appointmets#delete" 
    end
   end

end
