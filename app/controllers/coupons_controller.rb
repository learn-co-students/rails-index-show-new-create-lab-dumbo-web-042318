class CouponsController < ApplicationController

    before_action :find_coupon, only: :show

    def index 
        @coupons = Coupon.all
    end
    
    def new
        @coupon = Coupon.new
    end
    
    def create 
        @coupon = Coupon.new 
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save

        redirect_to coupon_path(@coupon)
    end

    def show
        
    end
    
    private 

    # def params_hash

    # end

    def find_coupon
        @coupon = Coupon.find(params[:id])
    end
    
end