puts "Cleaning database..."
Tree.destroy_all

puts 'Creating 5 fake users...'
naomi = User.create!(first_name: 'Naomi', last_name: 'Doe', email: 'naomi@gmail.com', password: 'secret')
noah = User.create!(first_name: 'Noah', last_name: 'Smith', email: 'noah@gmail.com', password: 'secret')
oliver = User.create!(first_name: 'Oliver', last_name: 'Jones', email: 'oliver@gmail.com', password: 'secret')
george = User.create!(first_name: 'George', last_name: 'Williams', email: 'george@gmail.com', password: 'secret')
leo = User.create!(first_name: 'Leo', last_name: 'Brown', email: 'leo@gmail.com', password: 'secret')

puts 'Creating 5 fake trees...'
Tree.create!(
  name: 'naomi’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175,
  quantity_per_year: 5,
  fruit_type: 'Apple',
  user: naomi
)

Tree.create!(
  name: 'Noah’s apple tree',
  address: '20 Oxford Street London',
  description: 'The sweet perfume of the sturdy, handsome cherry blossom tree and its delicate but breathtaking ivory flowers made the perfect location for meditation',
  price_per_year: 200,
  quantity_per_year: 2,
  fruit_type: 'Apricot',
  user: noah
)

Tree.create!(
  name: 'Olivier Giroud’s apple tree',
  address: 'Carnaby Street, London',
  description: 'The unusually short mandarn tree with the thick trunk by the edge of the forest is usually lively this time of year, but things have changed since families began to move to the new city.',
  price_per_year: 205,
  quantity_per_year: 5,
  fruit_type: 'Mandarin',
  user: oliver
)
Tree.create!(
  name: 'George’s apple tree',
  address: 'Brick Lane, London',
  description: 'It’s a shame they cut down the lush fig tree near the center of the courtyard to complete the renovations. I understand the thick branches and trunk make great lumber, but it isn’t fair that such a bountiful tree was killed',
  price_per_year: 135,
  quantity_per_year: 5,
  fruit_type: 'Fig',
  user: george
)
Tree.create!(
  name: 'Leo’s apple tree',
  address: 'Abbey Road, London',
  description: '“It was a remarkable tree that defied human logic. It was as if it secretly lifted its cemented roots, shook its thorny branches and walked a few centimeters every nigh',
  price_per_year: 86,
  quantity_per_year: 5,
  fruit_type: 'Mirabellier',
  user: leo
)
puts 'Finished!'
