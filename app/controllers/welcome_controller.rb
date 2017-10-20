class WelcomeController < ApplicationController

  def home
    if logged_in?
      redirect_to enrollments_path
    end
  end

end
