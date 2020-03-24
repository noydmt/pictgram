class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      login user
      redirect_to root_path, success:'ログイン成功'
    else
      flash.now[:danger]='ログインに失敗'
      render :new
    end
  end

  private
  def login(user)
    session[:user_id] = user.id
  end
end
