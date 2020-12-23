class AuctionsController < ApplicationController

  def index
    render json: AuctionSerializer.new(auctions)
  end

  def create
    @auction = Auction.new(auction_params)
    
  if @auction.save
    render json: AuctionSerializer.new(auction)
  end

  def destroy  
    @auction = Auction.find(params[:id])
    @auction.destroy
  end

  private

  def auction_params
    params.require(:auction).permit(:title)
  end
end
