class WelcomeController < ApplicationController
  
   
   
   
  def index
    @content = Page.find(1)
    @news = News.first
  end
end
