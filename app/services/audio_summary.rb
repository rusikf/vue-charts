class AudioSummary
  def initialize(rel)
    @rel = rel
  end

  attr_reader :rel

  def call
    {
      times_per_participant: TimesPerParticipant.new.call,
      average_duration: AverageDuration.new.call
    }
  end
end
