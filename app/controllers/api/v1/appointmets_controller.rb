class Api::V1::AppointmetsController < ApplicationController
  # before_action :authorized

  def index
    appointments = Appointment.where(user_id: params[:user_id])
    render json: appointments
  end

  def create
    appointment = Appointment.create(user_id: params[:user_id], doctor_id: params[:doctor_id], date_time: params[:time],room: params[:room])
    render json: appointment
  end

  # private
  # def permitted_params
  #   params.permit(:user_id, :doctor_id,:time)
  # end
end
