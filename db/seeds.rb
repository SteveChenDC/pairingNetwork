# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Language.delete_all
User.delete_all

LANGUAGES = ['Ruby', 'JavaScript', 'Java', 'Python', 'Elixir', 'Swift', 'Lisp', 'PHP', 'C', 'C++', 'Go']
imgs = [
  'https://randomuser.me/api/portraits/women/45.jpg',
  'https://randomuser.me/api/portraits/women/46.jpg',
  'https://randomuser.me/api/portraits/women/47.jpg',
  'https://randomuser.me/api/portraits/women/48.jpg',
  'https://randomuser.me/api/portraits/women/49.jpg',
  'https://randomuser.me/api/portraits/women/50.jpg',
]

LANGUAGES.each do |lang|
  Language.create(
    name: lang
  )
end

6.times do 
  u = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    img: imgs.shift
  )

  u.languages << Language.all.sample
end
