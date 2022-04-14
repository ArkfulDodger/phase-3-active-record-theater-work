puts '🌱 Seeding..... 🌱'

# reset tables here
Audition.destroy_all
Audition.reset_pk_sequence
Role.destroy_all
Role.reset_pk_sequence

# seed data here
buffy = Role.create(character_name: 'Buffy')
willow = Role.create(character_name: 'Willow')
spike = Role.create(character_name: 'Spike')
angel = Role.create(character_name: 'Angel')
god = Role.create(character_name: 'God')

Audition.create(
  actor: 'Sarah Michelle Gellar',
  location: 'LA',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: true,
  role: buffy
)
Audition.create(
  actor: 'Dolly Parton',
  location: 'Nashville',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: true,
  role: buffy
)
Audition.create(
  actor: 'Amy Adams',
  location: 'NYC',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: false,
  role: buffy
)
Audition.create(
  actor: 'Allyson Hannigan',
  location: 'LA',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: true,
  role: willow
)
Audition.create(
  actor: 'Michelle Wolf',
  location: 'LA',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: false,
  role: willow
)
Audition.create(
  actor: 'James Marsters',
  location: 'LA',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: true,
  role: spike
)
Audition.create(
  actor: 'David Boreanaz',
  location: 'NYC',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: true,
  role: angel
)
Audition.create(
  actor: 'Shia Lebeuf',
  location: 'LA',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: false,
  role: angel
)
Audition.create(
  actor: 'Shirley Temple',
  location: 'Hollywood',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: false,
  role: god
)
Audition.create(
  actor: 'Snoopy',
  location: 'Peanutville',
  phone: rand(1_000_000_000..9_999_999_999),
  hired: false,
  role: god
)

puts '🌱 ..... All Done Seeding! 🌱'
