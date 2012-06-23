class SessionController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    user = User.find_by_user_name(params[:user_name])
    puts "authenticating "+params[:user_name]+" with password "+params[:password]
    if user and user.authenticate(params[:password])
      session['user_id'] = user.id
      session['user'] = user
      redirect_to :books
    else
      redirect_to login_url, alert: "Invalid username/password"
    end
  end

  def destroy
    session['user_id'] = nil
    session[:user] = nil;
    redirect_to :back, notice: "Logged out"
  end
end
