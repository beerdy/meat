class WelcomeController < ApplicationController
  def index
    @groups = Group.all
    @max_vitrina = 4

  end
end
