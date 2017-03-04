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

  end

  def update
    #send the edit request (hint: not post method)
    # find an exisiting park object with id from form data
    #save the updated park object
    #if can save, redirect to parks parks_path
    #else render the edit page
  end

  def destroy
  end


  private

  def park_params
    params.require(:park).permit(:name, :description, :photo)
  end
end
