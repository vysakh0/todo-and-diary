class Chat < ActiveRecord::Base
  belongs_to :person
  belongs_to :diary
  attr_accessible :person_id
  # attr_accessible :title, :body
end
