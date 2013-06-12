class LearningStep < ActiveRecord::Base
  belongs_to :learn
  attr_accessible :step
end
