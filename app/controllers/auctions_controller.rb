class AuctionsController < ApplicationController

  def index
    auctions = Auction.all
    render json: AuctionSerializer.new(auctions)
  end

  def get_all
    return Auction.all
  end

  def create
    @auction = Auction.new(auction_params)
    
    if @auction.save
      render json: AuctionSerializer.new(@auction)
    end
  end

  def destroy  
    @auction = Auction.find(params[:id])
    @auction.destroy
  end

  private

  def auction_params
    params.require(:auction).permit(:title, :start_date, :end_date)
  end
end
