class ChurchesController < ApplicationController
  before_action :set_church, only: [:show, :edit, :update, :destroy]

  def index
    @churches = Church.all
  end

  def new
    @church = Church.new
    @church.services.new
  end

  def create
    @church = Church.new(church_params)
    if @church.save
      redirect_to @church
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

  def set_church
    @church = Church.find(params[:id])
  end

  def church_params
    params.require(:church)
        .permit(:description, :website, services_attributes: [:start_time, :day_of_week, :location])
  end
end