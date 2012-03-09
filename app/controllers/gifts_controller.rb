class GiftsController < ApplicationController
  def index

  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(params[:gift])
    if @gift.save
      flash[:notice] = "Gift has been created."
      redirect_to @gift
    else
      flash[:alert] = "Gift has not been created."
      render :action => "new"
    end
  end

  def show
    @gift = Gift.find(params[:id])
  end
end
