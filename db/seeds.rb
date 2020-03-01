require './db/seeds/area.rb'
require './db/seeds/category.rb'
require './db/seeds/brand.rb'
require './db/seeds/shippingway.rb'
# ↓ まだ作成中のためコメントアウト。
# require './db/seeds/product_size.rb'
# require './db/seeds/category_size.rb'
if Rails.env == "development"
  require './db/seeds/user.rb'
  # ↓ product_size, category_sizeのシードができるまでコメントアウト。
  # require './db/seeds/item.rb'
end
