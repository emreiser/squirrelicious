FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password 'swordfish'
  end

  # factory :basket do
  #   user
  # end

  factory :ingredient do
    name { 'steak' }
    ingred_type { 'protein' }
  end

end