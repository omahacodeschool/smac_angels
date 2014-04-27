class HomeController < ApplicationController
layout "homepage"
  
  def index
    # @requests = Request.where("current_status = 0").sample(5)
    @requests = Request.all.sample(5)
    @filler = Request.all.sample(5 - @requests.length)
    
  end

end