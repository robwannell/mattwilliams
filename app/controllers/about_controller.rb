class AboutController < ApplicationController
  
  def index
    @content = Page.find(2)
  
  end
end
