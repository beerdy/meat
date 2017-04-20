class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def initialize
    super

    @contents = Content.all

    #adress, #phone, #email
    eval(@contents[0].description)
    
  end
end
