# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{username: 'lenny', email:'lenny@gmail.com', password: 'abc123'}, {username: 'paloma', email:'paloma@gmail.com', password: 'palo321'}, {username: 'noah', email:'noah@gmail.com', password: 'noah123'}, {username: 'shiva', email:'shiva@gmail.com', password: 'shiva321'}])

Category.create([{name: 'Desert'}, {name: 'North Pole'}, {name: 'South Pole'}, {name: 'Argentina'}, {name: 'Peru'}])

Experience.create([{category_id: 1, user_id: 1, title: 'Patagonia', content: 'Green land, white peaks, and fresh air. What a great experience and beautiful view.'}, {category_id: 2, user_id:2, title:'Pisco in Lima, Peru', content:"I think you should try this drink. One of my favorites! It goes well with ceviche. Peruvian food is delicious."}, {category_id: 3, user_id: 2, title:'North Pole', content:'You must see the polar bears! They are amazing.'},  {category_id: 5, user_id: 2, title:'Desert hot but fun', content:'We got to do sand skiing and it was awesome!'},  {category_id: 3, user_id: 3, title:'We lost ourselves in the desert', content:'The view is outstanding yet we got lost and it was a horrible experience.'},  {category_id: 4, user_id: 3, title:'South Pole', content:'It was beuatiful we got to see a full eclipse from there.'} ])