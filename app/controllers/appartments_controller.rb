class AppartmentsController < ApplicationController
  def index
    @appartments = Appartment.all
  end

  def new
    @appartment = Appartment.new
    2.times { @appartment.stations.build }
  end

  def create
    @appartment = Appartment.new(appartment_params)
    if @appartment.save
      redirect_to appartments_path
    else
      render :new
    end
  end

  def show
    @appartment = Appartment.find(params[:id])
  end

  def edit
    @appartment = Appartment.find(params[:id])
    @appartment.stations.build
  end

  def update
    @appartment = Appartment.find(params[:id])
    if @appartment.update(appartment_params)
      redirect_to appartment_path
    else
      render :edit
    end
  end

  def destroy
    @appartment = Appartment.find(params[:id])
    @appartment.destroy
    redirect_to appartments_path
  end

  private

  def appartment_params
    params.require(:appartment).permit(:name, :price, :address, :age, :remarks, stations_attributes: [:id, :route, :station_name, :time])
  end

end

