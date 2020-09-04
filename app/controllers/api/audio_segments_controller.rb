module Api
  class AudioSegmentsController < ActionController::API
    def index
      render json: ::AudioSegmentRepresenter.new(rel).as_collection
    end

    def summary
      render json: AudioSummary.new(rel).call
    end

    private

    def rel
      AudioSegment.includes(:user).ordered
    end
  end
end

