ary_descripcion = ["あああ","いいい","ううう","えええ","おおお","かかか","ききき","くくく","けけけ","こここ"]
ary_categoryid = [3,4,5,7,8,9,10,3,4,5]

10.times do |n|
  brand_id = n+1
  category_id = ary_categoryid[n]
  product_size_id = nil
  condition_num =  0
  daystoship_num = 0
  description = ary_descripcion[n]
  feerate = 0.1
  price =  20000
  profit_price = 18000
  user_id = n+1
  address_id = 1
  shippingway_id = nil
  title = "商品#{n+1}"
  Item.create!(brand_id: brand_id,
    category_id:         category_id,
    product_size_id:     product_size_id,
    condition_num:       condition_num,
    daystoship_num:      daystoship_num,
    description:         description,
    feerate:             feerate,
    price:               price,
    profit_price:        profit_price,
    user_id:             user_id,
    address_id:          address_id,
    shippingway_id:      shippingway_id,
    title:               title)
end

