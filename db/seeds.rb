# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
Coupon.destroy_all

10.times do 
    Coupon.create(
        coupon_code: Faker::Kpop.boy_bands,
        store: Faker::GreekPhilosophers.quote
    )
end
