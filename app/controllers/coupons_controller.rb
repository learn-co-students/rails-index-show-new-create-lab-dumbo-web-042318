class CouponsController < ApplicationController

  before_action :set_coupon, only: [:show]

  def index
    @coupons = Coupon.all
  end

  def show

  end

  def new
  end

  def create
    # byebug
    @coupon = Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
