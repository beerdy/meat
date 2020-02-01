class BarbecueController < ApplicationController
  def index
    @title = @info_head_url['barbecue'].title
    @products = Product.where(barbecue: true)
    spec_super = Special.where(super: true)
    @spec_super = spec_super[rand(spec_super.size)]
  end
end
