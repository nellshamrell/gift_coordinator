class GiftsController < ApplicationController
  def index

  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(params[:gift])
    @gift.save
    flash[:notice] = "Gift has been created."
    redirect_to @gift
  end

  def show
    @gift = Gift.find(params[:id])
  end
end
