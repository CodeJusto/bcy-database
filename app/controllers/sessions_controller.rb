class SessionsController < ApplicationController
  def create
    @user = User.find_by(email:params[:email])
    if @user && @user.authenticate(params[:password])
      session[:key] = @user.key
      redirect_to newspapers_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:key] = nil
    redirect_to root_path
  end
end
