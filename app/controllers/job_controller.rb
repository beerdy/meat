class JobController < ApplicationController
  def index
    @page = Page.find_by url: 'job'
  end
end
