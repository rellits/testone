FactoryGirl.define do
  factory :user do
    name     "Mike Hart"
    email    "mike@hard.de"
    password "foobar"
    password_confirmation "foobar"
  end
end