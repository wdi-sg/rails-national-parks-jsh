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
    # byebug
    @new_park = Park.new(park_params)

    if @new_park.save
      respond_to do |format|
        format.html {redirect_to parks_path}
        format.json { render json: {status: 200, message: 'OK'} }
      end

    else
      render 'new'
    end

  end

  def edit
    #getting an exisiting park
    @edit_park = Park.find(params[:id])

  end

  def update
    # send the edit request
    # find an exisiting park object with id from form data

    @edit_park = Park.update(params[:id], park_params)

    if @edit_park.save
      respond_to do |format|
        format.html { redirect_to parks_path }
        format.json { render json: { status: 200, message: 'OK'} }
      end

    else
      #code
      render 'edit'
    end

  end

  def destroy
  end


  private

  def park_params
    params.require(:park).permit(:name, :description, :photo)
  end
end
