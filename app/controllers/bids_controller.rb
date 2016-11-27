class BidsController < ApplicationController
  before_action :set_product

  def create
    current_highest_bid = @product.bid.try(:amt)

    if params[:bid][:amt].to_i >= (current_highest_bid || @product.starting_bid)
      bid = @product.build_bid(bid_params)
  		bid.user = current_user
      bid.save
  		redirect_to product_path(@product), flash: { notice: 'Congrats! You have placed the highest bid' }
  	else
  		redirect_to product_path(@product), flash: {notice: 'Please bid a higher amount.' }
  	end
  end


  private
  def set_product
  	@product = Product.find(params[:product_id])
  end

  def bid_params
    	params.require(:bid).permit(:amt, :product_id)
  end
end
