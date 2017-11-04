class WelcomeController < ApplicationController

  def home
    if users_exist
      if logged_in?
        redirect_to enrollments_path
      end
    end
  end

end
