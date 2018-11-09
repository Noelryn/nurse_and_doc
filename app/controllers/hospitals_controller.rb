class HospitalsController < ApplicationController
  
  def index
    @user = authorize User.find(params[:id])
    @hospitals = Hospital.all
  end

  def create
    hospital = Hospital.create(hospital_params)
    if hospital.persisted?
      redirect_to hospitals_path, notice: 'Hospital added'
    else
      redirect_to hospitals_path, notice: 'Hospital already exists. Your hospital could not be saved'
    end
  end 

  private

  def hospital_params
    params.require(:hospital).permit(:name, :region)
  end
end
