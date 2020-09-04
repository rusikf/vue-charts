# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { name: 'Morpheus' },
  { name: 'Neo' },
  { name: 'Trinity' }
])

segments = [
  'Morpheus 12:00:00 12:00:15',
  'Neo 12:00:15 12:00:20',
  'Morpheus 12:00:22 12:00:30',
  'Morpheus 12:00:30 12:02:00',
  'Neo 12:02:04 12:02:05',
  'Morpheus 12:02:05 12:02:49',
  'Neo 12:02:50 12:02:59',
  'Morpheus 12:02:59 12:03:00',
  'Neo 12:03:10 12:03:33',
  'Morpheus 12:03:35 12:03:44',
  'Morpheus 12:03:55 12:04:40',
  'Trinity 12:04:40 12:04:50',
  'Neo 12:04:50 12:04:55',
  'Trinity 12:04:58 12:05:25',
  'Neo 12:05:26 12:05:34',
  'Morpheus 12:05:34 12:05:56',
  'Neo 12:06:00 12:06:22',
  'Morpheus 12:06:25 12:06:45',
  'Neo 12:06:48 12:07:00',
  'Trinity 12:07:00 12:07:12'
]

segments_attrs = segments.map do |segment|
  parts = segment.split(' ')
  {
    started_at: parts[1],
    ended_at: parts[2],
    user: User.find_by(name: parts[0]) || raise('Unknown user', parts[0])
  }
end

AudioSegment.create(segments_attrs)

