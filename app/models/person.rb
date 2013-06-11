class Person < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :phone
end
