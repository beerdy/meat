class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def initialize
    super

    @info = Info.all
    @contents = Content.all

    get_info_block

    #adress, #phone, #email
    eval(@contents[0].description)
    
  end

private
  def get_info_block
    
    @info_head , @info_footer = {}, {}
    
    @info.each do |info|

      # header block
      @info_head[info.sort] = info if info.group == 'info_head'

      # footer block
      @info_big = info if info.group == 'info_big'
      @info_small_1 = info if info.group == 'info_small_1'
      @info_small_2 = info if info.group == 'info_small_2'
      @info_small_3 = info if info.group == 'info_small_3'
      @info_small_4 = info if info.group == 'info_small_4'

    end
  end
end
