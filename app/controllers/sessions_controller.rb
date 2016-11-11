class SessionsController < ApplicationController

  def create

  #  from_omniauth is a yet non-existent method that will parse the authentication hash and return the user record.
  # Next, just save the user’s id inside the sessions and redirect to the main page.
    begin
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id
      session['token']        = auth_hash['credentials']['token']
      session['token_secret'] = auth_hash['credentials']['secret']
    rescue
      flash[:warning] = "There was an error.. Please try again"
    end
  redirect_to root_path




  end

  def destroy
    if current_user
      session.delete(:user_id)
      flash[:success] = 'Bye bye!'
    end
  redirect_to root_path
  end


  protected
  def auth_hash
    request.env['omniauth.auth']
  end

end

# https://github.com/omniauth/omniauth
# got the docs from this pages
