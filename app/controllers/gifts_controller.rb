class GiftsController < ApplicationController
  def index
    @gifts = Gift.all
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

  def edit
    @gift = Gift.find(params[:id])
  end

  def update
    @gift = Gift.find(params[:id])
    if @gift.update_attributes(params[:gift])
      flash[:notice] = "Gift has been updated."
      redirect_to @gift
    else
      flash[:alert] = "Gift has not been updated."
      render :action => "edit"
    end
  end
end
