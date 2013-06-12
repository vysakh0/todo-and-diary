class Diary < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description
  has_many :chats
  accepts_nested_attributes_for :chats
  attr_accessible :chats_attributes
end
