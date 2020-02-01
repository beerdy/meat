class SetController < ApplicationController
  def index
    @title = @info_head_url['set'].title
    @products = Product.where(set: true)
    spec_super = Special.where(super: true)
    @spec_super = spec_super[rand(spec_super.size)]
  end
end
