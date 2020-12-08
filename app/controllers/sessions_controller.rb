class SessionsController < ApplicationController

  def create
    user = User.find_by(email: login_params[:email])
    if user&.authenticate(login_params[:password])
      redirect_to '/dashboard'
    else
      flash[:login_errors] = ['invalid credentials']
      redirect_to '/'
    end
  end

  def login_params
    params.require(:login).permit(:email, :password)
  end
end
