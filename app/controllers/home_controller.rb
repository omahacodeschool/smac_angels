class HomeController < ApplicationController
layout "homepage"
  
  def index
    @requests = Request.where("current_status = 0").sample(5)
    @filler = Request.where("current_status > ? AND current_status < ?", 0, 11).sample(5 - @requests.length)
  end

end