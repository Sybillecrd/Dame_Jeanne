Artist.destroy_all
Project.destroy_all
Poster.destroy_all

puts "Creating artists..."

artists_attributes = [
  {
    first_name: "Victoire",
    last_name: "Delpierre",
    job: "Designer graphique/Chef de projet Web",
    speech: "",
    blog: "https://www.victoirephotos.fr",
    blog2: "https://www.victoiredelpierre.fr/"
  },
  {
    first_name: "Nicolas",
    last_name: "Paquet",
    job: "Graphiste Web/Print",
    instagram: "https://www.instagram.com/mephisto_artist/",
    linkedin: "https://www.linkedin.com/in/nicolas-paquet-0179aa115/"
  },
  {
    first_name: "Marc",
    last_name: "Lafon",
    job: "Graphiste Web/Print",
    speech: "",
    blog: "https://www.marclafon-design.fr"
  },
  {
    first_name: "Liane",
    last_name: "Langenbach",
    job: "Illustratrice graphiste",
    speech: "Communication illustrée pour projets écologiques et solidaires",
    blog: "https://www.liane-langenbach.com",
    blog2: "https://www.liloutestetou.com",
    instagram: "https://www.instagram.com/liane.langenbach/",
    facebook: "https://www.facebook.com/liane.langenbach/"
  },
  {
    first_name: "Sybille",
    last_name: "Cordeau",
    job: "Graphiste & Designer UX/UI",
    speech: "Illustrations inspirées de l'univers de la mode et de Bordeaux",
    blog: "http://sybillecrd.tumblr.com/",
    linkedin: "https://www.linkedin.com/in/sybille-cordeau/",
    behance: "https://www.behance.net/sybillecorda3f"
  },
  {
    first_name: "Marjorie",
    last_name: "Goalard",
    job: "Graphiste web/print & illustratrice",
    speech: "",
    blog: "https://www.behance.net/Marjorie-Goalard",
    instagram: "https://www.instagram.com/marjorie.goalard/",
    linkedin: "https://www.linkedin.com/in/marjorie-goalard/"
  },
  {
    first_name: "Camille",
    last_name: "Quid",
    job: "Illustratrice auteur",
    speech: "Illustrations féminines, mode, lifestyle avec phrases humoristiques",
    blog: "http://camillequid.ultra-book.com/portfolio",
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
    blog: "https://antoinecoiquaud1991.e-monsite.com",
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
    speech: "Illustration jeunesse / presse / commerciale et graphisme / DA print",
    blog: "https://www.amandine-thomas.com",
    instagram: "https://www.instagram.com/amandinethomas/",
    facebook: "https://www.facebook.com/helloamandinethomas"
  },
  {
    first_name: "Marie",
    last_name: "Paruit",
    job: "Illustratrice",
    speech: "Illustration secteur jeunesse ",
    blog: "http://www.marieparuit.ultra-book.com",
    instagram: "https://www.instagram.com/marieparuit/"
  },
  {
    first_name: "Alice",
    last_name: "Sébégo",
    job: "Développeuse web fullstack / Consultante Com' print et web",
    speech: "Développement back et front / Stratégie / Graphisme / Rédaction Web",
    blog: "https://www.com-amalice.fr",
    linkedin: "https://linkedin.com/in/alicesebego/",
    twitter: "https://twitter.com/ComaMalice"
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
    },
    {
      name: "Bordeaux vintage",
      artist: Artist.find_by(first_name:"Marie")
    },
    {
      name: "Projet architectural",
      artist: Artist.find_by(first_name:"Antoine")
    },
    {
      name: "Bordeaux - Les animaux sont dans la place",
      artist: Artist.find_by(first_name:"Liane")
    }
  ]

  Project.create!(projects_attributes)
  puts "#{Project.count} projects created!"

  puts "Creating posters..."

  posters_attributes = [
    {
      project: Project.find_by(name:"Bordeaux vintage"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1540279457/Dame%20Jeanne/bordeaux_1g_petit.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux vintage"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1540279457/Dame%20Jeanne/bordeaux_1d_petit.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux vintage"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1540279456/Dame%20Jeanne/pin-up-francaise-belle-vie-petit.jpg"
    },
    {
      project: Project.find_by(name:"Projet architectural"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1544697902/Dame%20Jeanne/GRAND_THEATRE_FINAL.jpg"
    },
    {
      project: Project.find_by(name:"Projet architectural"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1540541559/Dame%20Jeanne/FINAL_PAVILLON_ADMINISTRATIF_re%CC%81so72.jpg"
    },
    {
      project: Project.find_by(name:"Les trois Grâces"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1545058101/Dame%20Jeanne/vin-blanc-72.jpg"
    },
    {
      project: Project.find_by(name:"Les trois Grâces"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1544698043/Dame%20Jeanne/vin-rouge-72.jpg"
    },
    {
      project: Project.find_by(name:"Les trois Grâces"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1544698042/Dame%20Jeanne/Vin-rose%CC%81-72.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux - Les animaux sont dans la place"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549015893/Dame%20Jeanne/Liane-Victoire-web-DJ.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux - Les animaux sont dans la place"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549015893/Dame%20Jeanne/Liane-Quinconces-web-DJ.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux - Les animaux sont dans la place"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549015893/Dame%20Jeanne/Liane-Stalingrad-web-DJ.jpg"
    },
  ]

  Poster.create!(posters_attributes)
  puts "#{Poster.count} posters created!"
