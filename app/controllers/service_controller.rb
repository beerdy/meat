class ServiceController < ApplicationController
  def index
    @page = Page.find_by url: 'service'
  end
end
