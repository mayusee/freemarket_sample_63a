# 親：レディース
lady = Category.create(name: "レディース")

# 子：レディース／トップス
lady_tops = lady.children.create(name: "トップス")

# 孫：レディース／トップス
lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"},{name: "Tシャツ/カットソー(七分/長袖)"},{name: "その他"}])

# 子：レディース／アウター
lady_jacket = lady.children.create(name: "ジャケット/アウター")

# 孫：レディース／アウター
lady_jacket.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "その他"}])

