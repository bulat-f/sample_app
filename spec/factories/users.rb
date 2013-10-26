FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    sequence(:email) { |i|    "michael#{ i }@example.com" }
    password "foobartoo"
    password_confirmation "foobartoo"
  end
end
