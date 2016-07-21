class NewspapersController < ApplicationController
  before_action :require_login 

  def index
    @filter = Newspaper.all
  end

  def import
    Newspaper.import(params[:file])
    redirect_to newspapers_path, notice: "Import successful"
  end

  def filter
    # byebug
    @filter = Newspaper.where('publication LIKE ? OR sales_manager LIKE ? OR editor LIKE ? OR electoral_district LIKE ?', "%" + params[:search] + "%", "%" + params[:search] + "%", "%" + params[:search] + "%", "%" + params[:search] + "%")
    render :json => {newspapers: @filter}
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end


  private

  def require_login
    unless current_user
      redirect_to root_path
    end
  end
end
