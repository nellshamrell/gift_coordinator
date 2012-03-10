class GiftsController < ApplicationController
  before_filter :find_gift, :only => [:show,
                                     :edit,
                                     :update,
                                     :destroy]
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
  end

  def edit
  end

  def update
    if @gift.update_attributes(params[:gift])
      flash[:notice] = "Gift has been updated."
      redirect_to @gift
    else
      flash[:alert] = "Gift has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @gift = Gift.find(params[:id])
    @gift.destroy
    flash[:notice] = "Gift has been deleted."
    redirect_to gifts_path 
  end

  private
    def find_gift
      @gift = Gift.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The gift you were looking for could not be found."
      redirect_to gifts_path
    end
end
