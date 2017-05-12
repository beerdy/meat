class BusinessController < ApplicationController
  def index
    @page = Page.find_by url: 'business'
  end
end
