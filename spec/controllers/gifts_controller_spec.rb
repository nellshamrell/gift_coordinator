require 'spec_helper'

describe GiftsController do
  it "displays an error for a missing project" do
    get :show, :id => "not-here"
    response.should redirect_to(gifts_path)
    message = "The gift you were looking for could not be found."
    flash[:alert].should eql(message)
  end
end
