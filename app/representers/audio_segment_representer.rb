class AudioSegmentRepresenter
  def initialize(rel)
    @rel = rel
  end

  attr_reader :rel

  def as_collection
    rel.map do |el|
      {
        id: el.id,
        user: {
          id: el.user.id,
          name: el.user.name
        },
        started_at: el.started_at,
        ended_at: el.ended_at
      }
    end
  end
end
