module Api
  class AudioSegmentsController < ActionController::API
    def index
      render json: ::AudioSegmentRepresenter.new(AudioSegment.includes(:user).ordered).as_collection
    end
  end
end

