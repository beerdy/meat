class StakeController < ApplicationController
  def index
    @title = @info_head_url['stake'].title
    @products = Product.where(stake: true)
    spec_super = Special.where(super: true)
    @spec_super = spec_super[rand(spec_super.size)]
  end
end
