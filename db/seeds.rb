require './db/seeds/area.rb'
require './db/seeds/category.rb'
require './db/seeds/brand.rb'
require './db/seeds/shippingway.rb'
if Rails.env == "development"
  require './db/seeds/user.rb'
  require './db/seeds/item.rb'
end