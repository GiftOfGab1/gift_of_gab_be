FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    password { "MyString" }
    speed { 1 }
    pitch { 1 }
  end
end
