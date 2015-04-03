FactoryGirl.define do
  factory :user do
    email "a@a.com"
    password "12345678"
    password_confirmation "12345678"
  end

  factory :post do
    title "Hello"
    body "Content"
  end

  factory :comment do
    comment "Me too"
  end
end