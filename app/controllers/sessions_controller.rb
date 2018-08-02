class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase) # si un user de la base correspond à param email
    if user && user.authenticate(params[:session][:password]) # et qu'on arrive à l'identifer
    log_in user
    redirect_to '/'
  else
  	redirect_to '/login_error'
  end
end

  def destroy
  end

  def error
  end
 end
