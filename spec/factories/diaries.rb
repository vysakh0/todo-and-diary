# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :diary do
    user nil
    description "MyText"
  end
end
