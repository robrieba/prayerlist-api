class Api::PrayerRequestsController < ApiController
  before_action :authenticated?

  def create
    prayer_request = PrayerRequest.new(prayer_request_params)
    if prayer_request.save
      render json: prayer_request, status: :accepted
    else
      render json: { errors: prayer_request.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def prayer_request_params
    params.require(:prayer_request).permit(:name, :request)
  end

end
