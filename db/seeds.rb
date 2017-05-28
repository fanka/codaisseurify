# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
garou = Artist.create(name: "Garou", image_url: "https://fanparty.ru/fanclubs/garou/articles/79251/70541_tribune_garou.jpg")
obispo = Artist.create(name: "Pascal Obispo", image_url: "https://www.lanuitmagazine.com/lanuitmag/wp-content/uploads/2016/10/11-16-pascal-obispo-dome-concert-marseille.jpg")

Song.create(name:"Je n'attendais que vous", artist: garou)
Song.create(name:"Seul", artist: garou)
Song.create(name:"Fan", artist: obispo)
Song.create(name:"Lucie", artist: obispo)
