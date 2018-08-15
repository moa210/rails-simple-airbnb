class FlatsController < ApplicationController
  before_action :flat_find, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    valid_entry?(@flat)
  end

  def edit
    valid_entry?(@flat)
  end

  def update
    valid_entry?(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def valid_entry?(flat)
    if flat.save
      redirect_to flat_path(flat)
    else
      render :new
    end
  end

  def flat_find
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat). permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
