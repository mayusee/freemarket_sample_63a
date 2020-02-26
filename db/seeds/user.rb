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

