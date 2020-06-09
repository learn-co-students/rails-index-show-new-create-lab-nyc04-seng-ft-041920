class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
        render :index
    end

    def show
        @coupon = Coupon.find(params[:id])
        render :show
    end

    def new
        @coupon = Coupon.new
    end

    def create
        coupon_params = params.require(:coupon).permit(:coupon_code, :store)
        coupon = Coupon.create(coupon_params)
        redirect_to coupon_path(coupon)
    end

end
