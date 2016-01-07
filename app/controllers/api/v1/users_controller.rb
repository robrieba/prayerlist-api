class Api::V1::UsersController < ApiController

  before_action :authenticated?

  def index
    users = User.all
    # If the request is stale according to the given timestamp and etag value
    # (i.e. it needs to be processed again) then execute this block
    users.each do |u|
      if stale?(u)
        render json: users, each_serializer: UserSerializer
      end
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :accepted
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    begin
      user = User.find(params[:id])
      user.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
