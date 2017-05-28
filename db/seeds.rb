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
fiori = Artist.create(name: "Patrick Fiori", image_url:"http://muz-lyrics.ru/photos/artists/5/22769/patrick-fiori-6.jpg")
youn = Artist.create(name: "Michael Youn", image_url: "https://i.skyrock.net/0266/6600266/pics/102288216_small.jpg")


Song.create(name:"Je n'attendais que vous", artist: garou)
Song.create(name:"Seul", artist: garou)
Song.create(name:"Fan", artist: obispo)
Song.create(name:"Lucie", artist: obispo)
Song.create(name:"Sans bruit", artist: fiori)
Song.create(name:"Belle", artist: fiori)
Song.create(name:"Fous ta cagoule!", artist: youn)
Song.create(name:"Parle a ma main", artist: youn)
