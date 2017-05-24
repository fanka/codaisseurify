# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
garou = Artist.create(name: "Garou", image_url: "https://upload.wikimedia.org/wikipedia/commons/0/03/Garou_avp_Iron_Man_3_Paris.jpg")
obispo = Artist.create(name: "Pascal Obispo", image_url: "http://img.voi.pmdstatic.net/fit/http.3A.2F.2Fwww.2Evoici.2Efr.2Fvar.2Fvoi.2Fstorage.2Fimages.2Fbios-people.2Fpascal-obispo.2F8309185-865-fre-FR.2Fpascal-obispo.2Ejpg/380x285/quality/80/pascal-obispo.jpg")

Song.create(name:"Je n'attendais que vous", artist: garou)
Song.create(name:"Seul", artist: garou)
Song.create(name:"Fan", artist: obispo)
Song.create(name:"Lucie", artist: obispo)
