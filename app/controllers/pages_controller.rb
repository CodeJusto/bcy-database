class PagesController < ApplicationController
  def index
    if session[:key] 
      redirect_to newspapers_path
    end
  end
end
