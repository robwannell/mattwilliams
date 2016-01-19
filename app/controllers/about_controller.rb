class AboutController < ApplicationController
  
  def index
    @content = Page.find(2)
     @news = News.first
  end
end
