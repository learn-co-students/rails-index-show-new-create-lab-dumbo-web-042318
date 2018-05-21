class CouponsController < ApplicationController

  before_action :set_coupon, only: [:show]

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
  end

  def create
    # ==== Would also work ==== #
    # @coupon = Coupon.new
    # @coupon.coupon_code = params[:coupon][:coupon_code]
    # @coupon.store = params[:coupon][:store]
    # @coupon.save

    #==== thise is using strong params ====#
    # ==== coupon_params in private ==== #
    @coupon = Coupon.new(coupon_params)
    @coupon.save

    redirect_to coupon_path(@coupon)
  end


  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
