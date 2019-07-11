class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find_by(params[:id])
    @appointments = @patient.appointments
  end
  
end
