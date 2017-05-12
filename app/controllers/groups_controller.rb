class GroupsController < ApplicationController
  before_action :set_group, only: [:show]

  # GET /groups
  # GET /groups.json
  def index
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @title = @group.title

    if params[:type] == 'second'
      @products = @group.catalogs
    else
      @products = @group.products
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort, :type)
    end
end
