class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:handle_token]

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @comments = @user.comments
  end

  def handle_token
    token = params[:token]
    response = Unirest.post "https://duchess.rpxnow.com/api/v2/auth_info",
    parameters:{:apiKey=>"6611c9e927f555a97b3ef35bb6a137a1740d151b",:token=>params[:token]}

      provider = response.body['profile']['providerName']
      name = response.body['profile']["displayName"]  #Not a method
      uid = response.body['accessCredentials']['uid']
      user = User.where('provider=?',provider)
      .where("provider_id=?", name)
      .where("provider_id=?",uid).first

    if (!user)
      user = User.new({:email=> name })  #"#{uid}@#{provider}" #, :provider=>provider, :provider_id=> uid
    user.save!
    end

    sign_in_and_redirect(:user, user)
  end
end



