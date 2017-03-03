class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @parks = Park.find(params[:id])
  end
  def new
  end
  def edit
  end
  def update
  end
  def destroy
  end

end
