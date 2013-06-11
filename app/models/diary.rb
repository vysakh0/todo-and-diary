class Diary < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description
end
