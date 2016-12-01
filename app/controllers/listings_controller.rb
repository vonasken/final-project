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

private
def listing_params
  params.require(:listing).permit(:property, :price, :image)
end
end
