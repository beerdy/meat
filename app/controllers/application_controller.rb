class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def initialize
    super
    @max_vitrina = 4

    

    @info = Info.all
    @contents = Content.all
    
    begin
    @groups_all = Group.all.sort_by(&:sort)
    rescue Exception => e
    @groups_all = Group.all
    end
    
    @sub = @contents[4].description.html_safe

    get_info_block
    get_groups

    #adress, #phone, #email
    eval(@contents[0].description)
    
  end

private
  def get_info_block
    
    @info_head_sort, @info_head_url, @info_footer = {}, {}, {}
    
    @info.each do |info|

      # header block
      if info.group == 'info_head'
        @info_head_sort[info.sort] = info
        @info_head_url[info.url] = info
      end

      # footer block
      @info_big = info if info.group == 'info_big'
      
      @info_small_1 = info if info.group == 'info_small_1'
      @info_small_2 = info if info.group == 'info_small_2'
      @info_small_3 = info if info.group == 'info_small_3'
      @info_small_4 = info if info.group == 'info_small_4'

    end
  end
  def get_groups
    @groups, @groups_second = [],[]

    @groups_all.each do |group|
      
      @goto1 = group if group.url == 'goto1'

      if group.master == true
        @groups.push group
      else
        @groups_second.push group
      end

    end 
  end
end
