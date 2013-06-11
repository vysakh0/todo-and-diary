class Chat < ActiveRecord::Base
  belongs_to :person
  belongs_to :diary
  # attr_accessible :title, :body
end
