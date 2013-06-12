class Learn < ActiveRecord::Base
  belongs_to :user
  has_many :learning_steps
  attr_accessible :how, :status, :what
  accepts_nested_attributes_for :learning_steps
  attr_accessible :learning_steps_attributes
end
