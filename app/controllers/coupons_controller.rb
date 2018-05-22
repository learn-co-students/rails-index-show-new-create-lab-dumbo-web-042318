class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show, :edit, :update, :destroy]
  def index 
    @coupons = Coupon.all
  end

  def show 
  end 

  def new 
    @coupon = Coupon.new
  end 

  def create 
    coupon = Coupon.new(coupon_params)
    if coupon.save
      redirect_to coupon_path(coupon)
    else 
      redirect_to new_coupon_path
    end  
  end 

  def edit 

  end 

  def update 

  end 

  def delete


  end 


  private 

    def set_coupon 
      @coupon = Coupon.find(params[:id])

    end 

    def coupon_params 
      params.require(:coupon).permit(:coupon_code, :store)
    end 
end 
