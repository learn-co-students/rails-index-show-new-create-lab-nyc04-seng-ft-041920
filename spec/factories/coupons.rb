FactoryGirl.define do
  factory :coupon do
    coupon_code "FREESTUFF"
    store "Chipotle"
  end

  factory :second_coupon, class: Coupon do
    coupon_code "DISCOUNTJUICE"
    store "Jamba"
  end
end