class AboutController < ApplicationController
  def index
    @about = Page.find(1)
  end
end
