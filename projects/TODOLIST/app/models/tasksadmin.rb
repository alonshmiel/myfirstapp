class Tasksadmin < ActiveRecord::Base
  attr_accessible :admin_mail, :done, :task, :worker_mail
end
