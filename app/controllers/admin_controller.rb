class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username] == "admin" && params[:password] == "minda"
        session[:admin] = "admin"
        redirect_to "/stores"
      else
        flash[:notice] = "Invalid username/password"
        render :action=> :login
      end
    end
  end

  def logout
    session.delete(:admin)
    flash[:notice] = "You are logged out"
    redirect_to :action=> :login
  end
end
