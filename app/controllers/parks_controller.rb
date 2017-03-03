class ParksController < ApplicationController
  def index
    @parks = Park.all

    respond_to do |format|
      format.html
      format.json { render json: @parks }
    end
  end

  def show
    @park = Park.find(params[:id])

    # byebug # console logger

    respond_to do |format|
      format.html
      format.json { render json: @park }
    end

  end

  def new
    @new_park = Park.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
