FactoryGirl.define do

  sequence :email do |n|
    "person#{n}@email.com"
  end

  factory :user do
    email { generate(:email) }
    password "password"
    password_confirmation "password"
  end

end
