class WelcomeController < ApplicationController
  
   
   
   
  def index
    @content = Page.find(1)
  end
end
