class DoctorsController < ApplicationController
  before_action :find_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    redirect_to @doctor
  end

  def show
    @appointments = @doctor.appointments
  end

  def edit
  end

  def update
    @doctor.update(doctor_params)
  end

  def destroy
    @doctor.destroy
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :department)

  end

  def find_doctor
    @doctor = Doctor.find_by(id: params[:id])
  end

end
