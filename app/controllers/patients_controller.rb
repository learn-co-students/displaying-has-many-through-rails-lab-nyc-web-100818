class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    redirect_to @patient
  end

  def show
    @appointments = @patient.appointments
  end

  def edit
  end

  def update
    @patient.update(patient_params)
  end

  def destroy
    @patient.destroy
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :age)

  end

  def find_patient
    @patient = Patient.find_by(id: params[:id])
  end
end
