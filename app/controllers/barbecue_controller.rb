class BarbecueController < ApplicationController
  def index
    @title = @info_head_url['barbecue'].title
    @products = Product.where(barbecue: true)
  end
end
