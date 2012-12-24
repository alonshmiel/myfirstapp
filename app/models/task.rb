class Task < ActiveRecord::Base
  belongs_to :worker
  attr_accessible :done, :name
end
