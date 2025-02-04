module Api
  module V1
    # implements Api::V1::DoctorsController controller
    class DoctorsController < ApplicationController
      def index
        doctors = Doctor.all
        render json: doctors
      end
    end
  end
end
