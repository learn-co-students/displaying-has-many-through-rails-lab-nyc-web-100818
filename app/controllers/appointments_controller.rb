class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :delete]

  def index
    @appointments = Appointment.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def find_appointment
    @appointment = Appointment.find_by(id: params[:id])
  end

end
