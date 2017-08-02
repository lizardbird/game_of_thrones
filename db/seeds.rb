# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'gotfaker'

House.destroy_all
Character.destroy_all

stark = House.create(name: "Stark", region: "The North", location: "Winterfell", img_url: "https://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20170101103142")
lannister = House.create(name: "Lannister", region: "The Westerlands", location: "King's Landing", img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20170101095357")
targaryen = House.create(name: "Targaryen", region: "Dragonstone", location: "Dragonstone", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20170510235320")
greyjoy = House.create(name: "Greyjoy", region: "Iron Islands", location: "Pyke", img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/8/86/House-Greyjoy-Main-Shield.PNG/revision/latest?cb=20170523015836")
tyrell = House.create(name: "Tyrell", region: "The Reach", location: "Highgarden", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/c/cf/House-Tyrell-Main-Shield.PNG/revision/latest?cb=20170108163035")
martell = House.create(name: "Martell", region: "Dorne", location: "Sunspear", img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/7/7e/House-Martell-Main-Shield.PNG/revision/latest?cb=20170523024859")
nightswatch = House.create(name: "Night's Watch", region: "The Wall", location:"Castle Black", img_url: "https://vignette4.wikia.nocookie.net/gameofthrones/images/e/ed/Night%27s-Watch-Main-Shield.PNG/revision/latest?cb=20161231113156")

starkfamily = stark.characters.create(
[{
  name: "Sansa",
  is_alive: true,
  img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/9/90/Darksansastark.jpg/revision/latest/scale-to-width-down/666?cb=20170603165208"
},
{
  name: "Arya",
  is_alive: true,
  img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/9/90/Darksansastark.jpg/revision/latest/scale-to-width-down/666?cb=20170603165208"
},
{
  name: "Bran",
  is_alive: true,
  img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/9/9a/GOT_Season_7_11infobox.jpg/revision/latest/scale-to-width-down/308?cb=20170715195424"
},
{
  name: "Ned",
  is_alive: false,
  img_url: "https://vignette1.wikia.nocookie.net/gameofthrones/images/3/37/Eddard_Stark_infobox_new.jpg/revision/latest/scale-to-width-down/323?cb=20160730050722"
}]
)

lannisterfamily = lannister.characters.create(
[{
  name: "Cersei",
  is_alive: true,
  img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/c/c7/Queen_Cersei_Main_The_winds_of_Winter.jpg/revision/latest/scale-to-width-down/350?cb=20161215024728"
},
{
  name: "Jaime",
  is_alive: true,
  img_url: "https://vignette1.wikia.nocookie.net/gameofthrones/images/2/2e/GOT_Season_7_14_Jaime_Infobox.jpg/revision/latest/scale-to-width-down/278?cb=20170715192751"
},
{
  name: "Tyrion",
  is_alive: true,
  img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/4/4f/GoT-Sn7_FirstLook_14.jpg/revision/latest/scale-to-width-down/333?cb=20170612171541"
},
{
  name: "Joffrey",
  is_alive: false,
  img_url: "https://vignette4.wikia.nocookie.net/gameofthrones/images/e/ea/Joff_promo_shot_infobox_image.jpg/revision/latest?cb=20160809044359"
}]
)
