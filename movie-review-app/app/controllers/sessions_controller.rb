class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    @user = User.find_by(params[:session][:email])
    if @user #&& @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/users'
    else
      flash.now[:danger] = 'Invalid email or password'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
  def current_user
    if session[:user_id]
     User.find_by(id: session[:user_id])
    end
  end
end

