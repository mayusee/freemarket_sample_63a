FactoryBot.define do

  factory :address, class: Address do

    sequence(:city) { |i| "city_#{i}"}
    sequence(:number) { |i| "number_#{i}"}
    sequence(:building) { |i| "building#{i}"}

    association :area
    association :user

  end

end