class WelcomeController < ApplicationController
  
   
   
   
  def index
    @content = Page.find(1)
    @news = News.first
    @title = "Welcome"
    @description = "Matt Williams, candidate for Davis City Council 2016"
  end
end
