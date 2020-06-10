class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    # byebug
    @coupon = Coupon.new
  end

  def create
    coupon = Coupon.create(coupon_params)

    redirect_to coupon_path(coupon.id)
    # byebug
  end

  private
  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
