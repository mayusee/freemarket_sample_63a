# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Area.seed(:id,
  { :id => 0, :name => "北海道" },
  { :id => 1, :name => "青森県" },
  { :id => 2, :name => "岩手県" },
  { :id => 3, :name => "宮城県" },
  { :id => 4, :name => "秋田県" },
  { :id => 5, :name => "山形県" },
  { :id => 6, :name => "福島県" },
  { :id => 7, :name => "茨城県" },
  { :id => 8, :name => "栃木県" },
  { :id => 9, :name => "群馬県" },
  { :id => 10, :name => "埼玉県" },
  { :id => 11, :name => "千葉県" },
  { :id => 12, :name => "東京都" },
  { :id => 13, :name => "神奈川県" },
  { :id => 14, :name => "新潟県" },
  { :id => 15, :name => "富山県" },
  { :id => 16, :name => "石川県" },
  { :id => 17, :name => "福井県" },
  { :id => 18, :name => "山梨県" },
  { :id => 19, :name => "長野県" },
  { :id => 20, :name => "岐阜県" },
  { :id => 21, :name => "静岡県" },
  { :id => 22, :name => "愛知県" },
  { :id => 23, :name => "三重県" },
  { :id => 24, :name => "滋賀県" },
  { :id => 25, :name => "京都府" },
  { :id => 26, :name => "大阪府" },
  { :id => 27, :name => "兵庫県" },
  { :id => 28, :name => "奈良県" },
  { :id => 29, :name => "和歌山県" },
  { :id => 30, :name => "鳥取県" },
  { :id => 31, :name => "島根県" },
  { :id => 32, :name => "岡山県" },
  { :id => 33, :name => "広島県" },
  { :id => 34, :name => "山口県" },
  { :id => 35, :name => "徳島県" },
  { :id => 36, :name => "香川県" },
  { :id => 37, :name => "愛媛県" },
  { :id => 38, :name => "高知県" },
  { :id => 39, :name => "福岡県" },
  { :id => 40, :name => "佐賀県" },
  { :id => 41, :name => "長崎県" },
  { :id => 42, :name => "熊本県" },
  { :id => 43, :name => "大分県" },
  { :id => 44, :name => "宮崎県" },
  { :id => 45, :name => "鹿児島県" },
  { :id => 46, :name => "沖縄県" }
)

10.times do |n|
  nickname  = Faker::Name.name
  first_name = Faker::Japanese::Name.first_name
  last_name = Faker::Japanese::Name.last_name
  first_name_kana = Faker::Japanese::Name.first_name
  last_name_kana = Faker::Japanese::Name.last_name
  birthday = Faker::Date.birthday(min_age: 0, max_age: 100)
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(nickname:  nickname,
      first_name: first_name,
      last_name: last_name,
      first_name_kana: first_name_kana,
      last_name_kana: last_name_kana,
      birthday: birthday,
      email: email,
      password:              password,
      password_confirmation: password,)
end