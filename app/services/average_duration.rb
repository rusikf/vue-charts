class AverageDuration
  def call
    rel = AudioSegment.all.map do |a|
      a.duration = (a.ended_at - a.started_at) / 1.minutes
      a
    end
    grouped_by_user = rel.group_by { |s| s.user.name }

    grouped_by_user.map do |k, values|
      [k, average_duration(values.map(&:duration)) ]
    end.to_h
  end

  private

  def average_duration(arr)
    (arr.reduce(:+) / arr.size.to_f).round(2)
  end
end

