# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
misc_item = ["wallet", "purse", "keys", "sunglasses"]
colors = ["brown", "blue", "red", "green", "yellow", "purple"]
adjective = ["Bad Mofo", "Beloved", "Grandma's", "Kid's", "Woman's"]
owners = ["Dave Osborne", "Arthur Dent", "Raskolnikov", "Owen Meany", "Billy Pilgrim"]

miscellaneous = Category.create(title: "miscellaneous", description: "Small Stuff, Keys, Wallets, etc.")
clothing = Category.create(title: "clothing", description: "Shirts, Shoes, Hats")


20.times do 
	title = colors.sample + " " + misc_item.sample
	description = adjective.sample + " " + title
	Item.create(title: title, description: description, owner: owners.sample, category: miscellaneous)
end
