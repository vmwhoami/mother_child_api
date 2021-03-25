class Api::V1::AppointmetsController < ApplicationController
  before_action :authorized

  def index
    appointments = Appointment.where(user_id: params[:user_id])
    render json: appointments
  end

  def create
    appointment = Appointment.create(user_id: params[:user_id], doctor_id: params[:doctor_id], date_time: params[:time],room: params[:room])
    if appointment.valid?
    render json: appointment
    else
      render json: { errors: appointment.errors.full_messages }, status: :not_acceptable
    end
  end

  def delete
    appointment = Appointment.find_by(id: params[:id])
    if appointment
      appointment.destroy
      render json: {success: "Deleted"}
    else
      render json: { errors: "Something went wrong" }, status: :not_acceptable
    end
  end
  # private
  # def permitted_params
  #   params.permit(:user_id, :doctor_id,:time)
  # end
end
