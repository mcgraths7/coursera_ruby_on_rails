class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]
  def new
    # Login page
  end

  def create
    reviewer = Reviewer.find_by(email: params[:reviewer][:email])
    password = params[:reviewer][:password]

    if reviewer && reviewer.authenticate(password)
      session[:reviewer_id] = reviewer.id
      redirect_to root_path, notice: "Logged in!"
    else
      redirect_to login_path, alert: "Login failed! Check email or password."
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "Logged out!"
  end
end
