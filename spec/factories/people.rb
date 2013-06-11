# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name "MyString"
    user nil
    phone "MyString"
  end
end
