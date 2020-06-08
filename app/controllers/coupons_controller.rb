class CouponsController < ApplicationController
    def index
        #show all Coupons
        @coupons = Coupon.all
    end 

    def show
        #show individual coupon
        @coupon = Coupon.find(params[:id])
    end

    def new
        #render form
    end 

    def create
        @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])

        redirect_to coupon_path(@coupon)
    end
end