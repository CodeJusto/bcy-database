class NewspapersController < ApplicationController
  def index
    @filter = Newspaper.all
  end

  def import
    # byebug
    Newspaper.import(params[:file])
    redirect_to root_url, notice: "Import successful"
  end

  def filter
    # byebug
    @filter = Newspaper.where('publication LIKE ? OR sales_manager LIKE ? OR editor LIKE ?', "%" + params[:search] + "%", "%" + params[:search] + "%", "%" + params[:search] + "%")
    render :json => {newspapers: @filter}
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end

  def home

  end
end
