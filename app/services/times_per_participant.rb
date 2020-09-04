class TimesPerParticipant
  def call
    AudioSegment.group(:user_id).count.map { |k,v| [User.find(k).name,v] }.to_h
  end
end

