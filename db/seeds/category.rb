# 親：レディース
lady = Category.create(name: "レディース")

# 子：レディース／トップス
lady_tops = lady.children.create(name: "トップス")

# 孫：レディース／トップス
lady_tops_items = lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"},{name: "Tシャツ/カットソー(七分/長袖)"},{name: "その他"}])

# 子：レディース／アウター
lady_jacket = lady.children.create(name: "ジャケット/アウター")

# 孫：レディース／アウター
lady_jacket_items = lady_jacket.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "その他"}])

# サイズ
ary_size = [{name: "XXS以下"},{name: "XS(SS)"},{name: "S"},{name: "M"},{name: "L"},{name: "XL(LL)"},{name: "2XL(3L)"},{name: "3XL(4L)"},{name: "4XL(5L)以上"},{name: "FREE SIZE"}]

# 曽孫：レディース／トップス／孫たち
lady_tops.children.each do |size|
  size.children.create(ary_size)
end

# 曽孫：レディース／アウター／孫たち
lady_jacket.children.each do |size|
  size.children.create(ary_size)
end
