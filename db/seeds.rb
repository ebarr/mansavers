# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u = User.new
  u.small_gift_name = "Jewelry"
  u.small_gift_price = "$20"
  u.small_gift_image = "http://g.nordstromimage.com/imagegallery/store/product/Large/16/_8580916.jpg"
  u.medium_gift_name = "Flowers"
  u.medium_gift_price = "$35"
  u.medium_gift_image = "http://s3.amazonaws.com/Supermarket/pictures/530746/il_fullxfull.383823531_ncvf.jpg"
  u.large_gift_name = "Cookies"
  u.large_gift_price = "50"
  u.large_gift_image = "http://www.shopsucre.com/media/catalog/product/cache/1/image/310x298/9df78eab33525d08d6e5fb8d27136e95/m/a/mac_nola15_4.jpg"
u.save
