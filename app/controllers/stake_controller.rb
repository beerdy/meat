class StakeController < ApplicationController
  def index
    @title = @info_head_url['stake'].title
    @products = Product.where(stake: true)
  end
end
