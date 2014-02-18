class PagesController < ApplicationController
  def home
    render :layout => "main", :template => "home/home"
  end
end
