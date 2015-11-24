require 'rails_helper'

describe CouponsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new coupon" do
        expect{
          post :create, coupon: FactoryGirl.attributes_for(:coupon)
        }.to change(Coupon,:count).by(1)
      end
      
      it "redirects to the new coupon" do
        post :create, coupon: FactoryGirl.attributes_for(:coupon)
        expect(response).to redirect_to Coupon.last
      end
    end
  end

end