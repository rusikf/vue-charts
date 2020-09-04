require 'rails_helper'

RSpec.describe "AudioSegments", type: :request do
  describe "GET /api/audio_segments" do
    let!(:segment) { FactoryBot.create(:audio_segment) }
    it "fetch collection" do
      get '/api/audio_segments'
      expect(response).to have_http_status(200)
      body = JSON.parse(response.body)
      expect(body.length).to eq(1)
      expect(body[0]).to include('id', 'user', 'started_at', 'ended_at')
    end
  end
end
