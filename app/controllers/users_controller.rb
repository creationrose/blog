class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:handle_token]

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @comments = @user.comments
  end

  def handle_token
    token = params[:token]

    redirect_to :show #error: no show_url  because it hasnt created a new user?  (Doesnt break app if redirecting to "/")
  end
end




# Next Steps:

# create new user based based on FB or Google (how to do with devise handling it?) and save janrain info to it
# verify the token with Janrain and get more info from them
# Maybe do a post request to janrain's servers and provide the created token?
# If it's verified, sign in the user using devise's `sign_in` method (I think?)





# ----------------------------------
#         Architecture
# ----------------------------------
# user
# app endpoint
# janrain

# user signs in to janrain and gets a token (random string)
# user sends token to app endpoint
# app endpoint extracts the token from the POST
# app endpoint sends the token + app key to janrain
# janrain responds with additional information about the user (if it's a valid token)


#       user
#       |   |
#       v   v
# janrain<--app endpoint-->create user-->sign in user-->redirect to show



