class Api::V1::AppointmetsController < ApplicationController
  before_action :authorized

  def allapp
    appointments = Appointment.all
    render json: appointments
  end

  def index
    appointments = Appointment.where(user_id: params[:user_id])
    render json: appointments
  end

  def create
    appointment = Appointment.create(user_id: params[:user], doctor_id: params[:doctor], date_time: params[:time] )
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
end
