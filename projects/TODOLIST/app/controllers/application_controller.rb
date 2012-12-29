class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!
  
  def is_worker
    if user_signed_in?
       @email = current_user.email
       if Worker.find_by_email(@email).nil?
         redirect_to '/tasksadmins'
       else
          redirect_to '/workers'
       end
    end
  end

end
