class HomeController < ApplicationController
  def index
    birth = current_user.birth_date.to_time.to_i
    now = Time.now.to_i
    sec = now - birth
    @days = sec/(60*60*24)
  end
end
