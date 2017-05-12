class FarmersController < ApplicationController
  def index
    @page = Page.find_by url: 'farmers'
  end
end
