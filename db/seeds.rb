#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@artists = [
  {
    "first_name": "Victoire",
    "last_name": "Delpierre",
    "job": "Designer graphique/Chef de projet Web",
    "project": "Zoom Zoom",
    "speech": "",
    "blog": "www.victoire.delpierre.fr"
  },
  {
    "first_name": "Nicolas",
    "last_name": "Paquet",
    "job": "Graphiste Web/Print",
    "project": "Colour & Shape",
    "speech": "",
    "blog": ""
  },
  {
    "first_name": "Marc",
    "last_name": "Lafon",
    "job": "Graphiste Web/Print",
    "project": "",
    "speech": "",
    "blog": "www.marclafon-design.fr"
  },
  {
    "first_name": "Liane",
    "last_name": "Langenbach",
    "job": "Illustratrice graphiste",
    "project": "",
    "speech": "Communication illustrée pour projets écologiques et solidaires",
    "blog": "www.liane-langenbach.com"
  },
  {
    "first_name": "Sybille",
    "last_name": "Cordeau",
    "job": "Designer UX/UI",
    "project": "Les trois Grâces",
    "speech": "Illustrations inspirées de l'univers de la mode et de Bordeaux",
    "blog": "http://sybillecrd.tumblr.com/"
  },
  {
    "first_name": "Marjorie",
    "last_name": "Goalard",
    "job": "Graphiste web/print & illustratrice",
    "project": "",
    "speech": "",
    "blog": "www.behance.net/Marjorie-Goalard",
    "instagram": "https://www.instagram.com/marjorie.goalard/"
  },
  {
    "first_name": "Camille",
    "last_name": "Quid",
    "job": "Illustratrice auteur",
    "project": "",
    "speech": "Illustrations féminines, mode, lifestyle avec phrases humoristiques",
    "instagram": "https://www.instagram.com/camille_quid/"
  },
  {
    "first_name": "Johanna",
    "last_name": "de Sigoyer",
    "job": "Graphiste web/print",
    "project": "",
    "speech": "",
    "blog": "http://cargocollective.com/jomaxwell",
    "linkedin": "https://www.linkedin.com/in/johanna-de-sigoyer-b5ab091b/"
  },
  {
    "first_name": "Vincent",
    "last_name": "Millas",
    "job": "Direction artistique illustration & 3D",
    "project": "",
    "speech": "Illustration, typographie, création 3D et motion 2D/3D.",
    "blog": "http://larche.team/vincentmillas/index.html",
    "instagram": "https://www.instagram.com/vincent_millas/"
  },
  {
    "first_name": "Antoine",
    "last_name": "Coiquaud",
    "job": "Graphiste 3D",
    "project": "",
    "speech": "Images de synthèse et visite virtuelle 3d",
    "blog": "http://antoinecoiquaud1991.e-monsite.com",
  },
  {
    "first_name": "Pauline",
    "last_name": "Lenain",
    "job": "Graphiste / Illustratrice / Packaging",
    "project": "",
    "speech": "Etiquette de vin, impression letterpress, galbé, dorure, papier création.",
    "blog": "https://www.graphisme-la-lettre-m.fr",
  },
  {
    "first_name": "Amandine",
    "last_name": "Thomas",
    "job": "Illustratrice et DA print",
    "project": "",
    "speech": "Illustration jeunesse / presse / commerciale et graphisme / DA print.",
    "blog": "www.amandine-thomas.com",
    "instagram": "https://www.instagram.com/amandinethomas/"
  },

  @artits.each do |artist|
  Artist.create!(first_name: artist[:first_name], job: artist[:job])
end
