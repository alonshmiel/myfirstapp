class Worker < ActiveRecord::Base
  has_many :tasks
  attr_accessible :name
end
