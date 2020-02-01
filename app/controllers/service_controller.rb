class ServiceController < ApplicationController
  def index
    @page = Page.find_by url: 'service'
    @spec_super = Special.where(url: 'service').first
    
  end
end
