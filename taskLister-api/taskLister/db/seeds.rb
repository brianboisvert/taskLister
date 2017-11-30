# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

list1 = List.create(title: "homework")
lsit2 = List.create(title: "dishes")
list3 = List.create(title: "laundry")

read_article = Task.create(title: "Science", description: "Article about science", list_id: 1)
write_essay = Task.create(title: "My science essay", description: "It's an essay about science!", list_id: 1)

prerinse_dishes = Task.create(title: "Prerinse", description: "Wash the dishes first", list_id: 2)
load_dishwasher = Task.create(title: "Load_dishwasher", description: "Put them all in!", list_id: 2)

buy_detergent = Task.create(title: "Detergent", description: "Have to buy detergent", list_id: 3)
load_washer = Task.create(title: "Load", description: "Put everything in drum", list_id: 3)
