class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    redirect_to @appointment
  end

  def show
    @patient = @appointment.patient
    @doctor = @appointment.doctor
  end

  def edit
  end

  def update
    @appointment.update(appointment_params)
    redirect_to @appointment
  end

  def destroy
    @appointment.destroy
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)

  end

  def find_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end

end
