class AboutController < ApplicationController
  
  def index
    @content = Page.find(2)
     @news = News.first
     @title = "About Matt Williams"
     @description = "About Matt Williams, candidate for Davis City Council 2016"
  end
end
