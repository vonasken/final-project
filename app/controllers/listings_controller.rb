class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end
  def show
    @listing = Listing.find(params[:id])
  end
  def new
    @listing = Listing.new
  end
  def create
    @listing = Listing.new(listing_params)

  @listing.save
  redirect_to @listing

  end

  def temp
    
  end

private
def listing_params
  params.require(:listing).permit(:property, :price, :image, :address, :description, :shares_available, :sharePrice, :aptDetsBed, :aptDetsBath, :aptDetsSqft,
  :factsFeature)
end
end
