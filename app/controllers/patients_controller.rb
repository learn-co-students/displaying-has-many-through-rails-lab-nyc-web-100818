class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :delete]

  def index
    @patients = Patient.all
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

  def find_patient
    @patient = Patient.find_by(id: params[:id])
  end

end
