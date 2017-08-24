class SessionsController < ApplicationController

  def create
    user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    unless user.nil?
      redirect_to user_url(user)
    else
      render json: 'Credentials were wrong'
    end
  end

  def new

  end

  def destroy
    logout!
    redirect_to new_session_url
  end
end
