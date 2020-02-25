ary_descripcion = ["あああ","いいい","ううう","えええ","おおお","かかか","ききき","くくく","けけけ","こここ"]
ary_categoryid = [3,4,5,7,8,9,10,3,4,5]

10.times do |n|
  brand_id = n
  category_id = ary_categoryid[n]
  condition_num =  0
  daystoship_num = 0
  description = ary_descripcion[n]
  feerate = 0.1
  price =  20000
  profit_price = 18000
  seller_id = n
  shippingcharge_num = 0
  shippingway_id = 0
  size_num = 0
  status_num = 0
  title = "商品#{n}"
  Item.create!(brand_id: brand_id,
    category_id:         category_id,
    condition_num:       condition_num,
    daystoship_num:      daystoship_num,
    description:         description,
    feerate:             feerate,
    price:               price,
    profit_price:        profit_price,
    seller_id:           seller_id,
    shippingcharge_num:  shippingcharge_num,
    shippingway_id:      shippingway_id,
    size_num:            size_num,
    status_num:          status_num,
    title:               title,)
end

