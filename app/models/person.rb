class Person < ActiveRecord::Base
  belongs_to :user
  has_many :chats
  attr_accessible :name, :phone
end
