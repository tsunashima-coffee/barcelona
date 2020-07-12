class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new; end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to(spots_user_path(@user))
    else
      render :new
    end
  end
end
