Artist.destroy_all
Project.destroy_all

puts "Creating artists..."

artists_attributes = [
  {
    first_name: "Victoire",
    last_name: "Delpierre",
    job: "Designer graphique/Chef de projet Web",
    speech: "",
    blog: "www.victoire.delpierre.fr"
  },
  {
    first_name: "Nicolas",
    last_name: "Paquet",
    job: "Graphiste Web/Print",
    speech: "",
    blog: ""
  },
  {
    first_name: "Marc",
    last_name: "Lafon",
    job: "Graphiste Web/Print",
    speech: "",
    blog: "www.marclafon-design.fr"
  },
  {
    first_name: "Liane",
    last_name: "Langenbach",
    job: "Illustratrice graphiste",
    speech: "Communication illustrée pour projets écologiques et solidaires",
    blog: "www.liane-langenbach.com"
  },
  {
    first_name: "Sybille",
    last_name: "Cordeau",
    job: "Designer UX/UI",
    speech: "Illustrations inspirées de l'univers de la mode et de Bordeaux",
    blog: "http://sybillecrd.tumblr.com/",
    linkedin: "https://www.linkedin.com/in/sybille-cordeau/"
  },
  {
    first_name: "Marjorie",
    last_name: "Goalard",
    job: "Graphiste web/print & illustratrice",
    speech: "",
    blog: "www.behance.net/Marjorie-Goalard",
    instagram: "https://www.instagram.com/marjorie.goalard/"
  },
  {
    first_name: "Camille",
    last_name: "Quid",
    job: "Illustratrice auteur",
    speech: "Illustrations féminines, mode, lifestyle avec phrases humoristiques",
    instagram: "https://www.instagram.com/camille_quid/"
  },
  {
    first_name: "Johanna",
    last_name: "de Sigoyer",
    job: "Graphiste web/print",
    speech: "",
    blog: "http://cargocollective.com/jomaxwell",
    linkedin: "https://www.linkedin.com/in/johanna-de-sigoyer-b5ab091b/"
  },
  {
    first_name: "Vincent",
    last_name: "Millas",
    job: "Direction artistique illustration & 3D",
    speech: "Illustration, typographie, création 3D et motion 2D/3D.",
    blog: "http://larche.team/vincentmillas/index.html",
    instagram: "https://www.instagram.com/vincent_millas/"
  },
  {
    first_name: "Antoine",
    last_name: "Coiquaud",
    job: "Graphiste 3D",
    speech: "Images de synthèse et visite virtuelle 3d",
    blog: "http://antoinecoiquaud1991.e-monsite.com",
  },
  {
    first_name: "Pauline",
    last_name: "Lenain",
    job: "Graphiste / Illustratrice / Packaging",
    speech: "Etiquette de vin, impression letterpress, galbé, dorure, papier création.",
    blog: "https://www.graphisme-la-lettre-m.fr",
  },
  {
    first_name: "Amandine",
    last_name: "Thomas",
    job: "Illustratrice et DA print",
    speech: "Illustration jeunesse / presse / commerciale et graphisme / DA print.",
    blog: "www.amandine-thomas.com",
    instagram: "https://www.instagram.com/amandinethomas/"
  },
  {
    first_name: "Marie",
    last_name: "Paruit",
    job: "Illustratrice",
    speech: "Illustration secteur jeunesse ",
    blog: "www.marieparuit.ultra-book.com",
    instagram: "https://www.instagram.com/marieparuit/"
  }
]


Artist.create!(artists_attributes)
puts "#{Artist.count} artists created!"

puts "Creating projects..."

  projects_attributes = [
    {
      name: "Zoom Zoom",
      artist: Artist.find_by(first_name:"Victoire")
    },
    {
      name: "Colour & Shape",
      artist: Artist.find_by(first_name:"Nicolas")
    },
    {
      name: "Les trois Grâces",
      artist: Artist.find_by(first_name:"Sybille")
    }
  ]

  Project.create!(projects_attributes)
  puts "#{Project.count} projects created!"
