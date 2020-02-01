class SpecialsController < ApplicationController
  before_action :set_special, only: [:show]

  # GET /specials
  # GET /specials.json
  def index
    @specials = Special.all.sort_by(&:sort)
    get_spec
  end

  # GET /specials/1
  # GET /specials/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special
      @special = Special.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_params
      params.require(:special).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort)
    end
    def get_spec
      @spec,spec_super = [],[]

      @specials.each do |special|

        if special.super == true
          spec_super.push special
        else
          @spec.push special
        end

      end
      @spec_super = spec_super[rand(spec_super.size)]
    end
end
