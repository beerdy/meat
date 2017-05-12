class SetController < ApplicationController
  def index
    @title = @info_head_url['set'].title
    @products = Product.where(set: true)
  end
end
