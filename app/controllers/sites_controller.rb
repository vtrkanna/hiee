class SitesController < ApplicationController
  def list
    @site = Site.order("name asc")
    render :template => "sites/site_list"
  end
end
