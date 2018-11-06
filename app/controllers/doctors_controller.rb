class DoctorsController < ApplicationController
  before_action :find_doctor, only: [:show, :edit, :update, :delete]

  def index

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

  def find_doctor
    @doctor = Doctor.find_by(id: params[:id])
  end

end
