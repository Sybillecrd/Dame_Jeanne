Artist.destroy_all
Project.destroy_all
Poster.destroy_all

puts "Creating artists..."

artists_attributes = [
  {
    first_name: "Victoire",
    last_name: "Delpierre",
    job: "Designer graphique/Chef de projet Web",
    speech: "Formée à l’École des Beaux Arts de Bordeaux, je suis designer graphique freelance.
      Intriguée par les dimensions numériques de l’image et de l’information, j’ai ajouté à mon arc, la fonction de cheffe de projet digital. Je travaille autour de la conception de l’image et de ses enjeux techniques, mais surtout créatifs, en interrogeant le lien entre typographie, photographie & graphisme.
      Les illustrations Zoom Zoom réalisées au sein du collectif illustré, me permettent d’attirer l’attention sur des endroits qui me séduisent et de focaliser sur certains détails.",
    blog: "https://www.victoirephotos.fr",
    blog2: "https://www.victoiredelpierre.fr/",
    instagram: "https://www.instagram.com/victoiredelpierre/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552479477/Dame%20Jeanne/VictoireDelpierre-photoAlessandraOstolidi.jpg"
  },
  {
    first_name: "Marc",
    last_name: "Lafon",
    job: "Graphiste Web/Print",
    speech: "Graphiste, maquettiste et affichiste travaillant à Bordeaux. Spécialisé dans la maquette de livre et l’affiche de cinéma, je suis aussi un graphiste touche à tout qui n’hésite pas à explorer des techniques et méthodes pour mieux m’adapter à la mission. Au travers de Dame Jeanne j’explore ma vision d’un bordeaux coloré et divers.",
    blog: "https://www.marclafon-design.fr",
    instagram: "https://www.instagram.com/marclafon33/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552479477/Dame%20Jeanne/IMG_8675-copie-WEB.jpg"
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
    speech: "Après avoir étudié la mode à Paris, je suis retournée dans ma ville natale, Bordeaux, pour suivre une formation de développement web et me lancer en freelance en tant que graphiste et webdesigner. Restant fidèle à ma passion première, je puise mon inspiration dans la mode, l’art et les voyages.
      Ainsi, les illustrations que j’ai réalisées pour Dame Jeanne est une personnification du vin rouge, blanc et rosé incarnée par les trois Grâces de la place de la Bourse.",
    blog: "http://sybillecrd.tumblr.com/",
    linkedin: "https://www.linkedin.com/in/sybille-cordeau/",
    behance: "https://www.behance.net/sybillecorda3f",
    dribbble: "https://dribbble.com/Sybillecrd",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552474510/Dame%20Jeanne/IMG_3577.jpg"
  },
  {
    first_name: "Marjorie",
    last_name: "Goalard",
    job: "Graphiste web/print & illustratrice",
    speech: "Marjorie Goalard est originaire de Bayonne et a débarqué à Bordeaux il y a de ça quelques années. Depuis maintenant 1 an elle s'est lancé dans l'aventure de graphiste freelance. Dans son travail Marjorie fait la part belle à l'illustration à travers la création de compositions colorées où se mêlent détails et symboles. Faire partie du collectif Dame Jeanne lui permet de rendre hommage à Bordeaux, devenue sa ville de coeur.",
    blog: "https://www.behance.net/Marjorie-Goalard",
    instagram: "https://www.instagram.com/marjorie.goalard/",
    linkedin: "https://www.linkedin.com/in/marjorie-goalard/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552479477/Dame%20Jeanne/marjorie-portrait-illu.jpg"
  },
  {
    first_name: "Camille",
    last_name: "Quid",
    job: "Illustratrice auteur",
    speech: "Camille Quid est illustratrice auteur, installée à
      Bordeaux en free-lance depuis 2012. Elle
      travaille pour différents projets comme des
      sites internet, des portraits de famille, des
      cartes de vœux, des identités visuelles, ou
      des magazines.
      Elle tient à jour son « petit journal » en
      publiant des dessins quotidiens et
      humoristiques sur Instagram.
      En participant au Collectif Dame Jeanne elle
      lance aujourd'hui une gamme d'affiches,
      illustrant La Bordelaise.
      Puisque Bordeaux est le thème qui rassemble
      tous les artistes de ce collectif, Camille Quid a
      à cœur, à l’instar de la parisienne, de mettre
      en scène La Femme, et en particulier celle qui
      vit et aime Bordeaux !
      Avec ses affiches, Camille Quid souhaite vous
      emmener dans son univers féminin, frais et
      léger, avec une touche d'humour, au travers
      de petites scènes de vie croquées dans les
      lieux tant aimés. Ce qu'elle espère c'est que
      chacun trouve à s’y identifier et y retrouve la
      Bordelaise qu’il a rencontrée, connue ou
      croisée.
      Chaque dessin évoque dans une bulle une
      petite phrase évoquant cet instant volé, où le
      temps semble s'être arrêté, une anecdote d’un
      petit moment vécu par cette Bordelaise aux
      milles facettes !",
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
    first_name: "Antoine",
    last_name: "Coiquaud",
    job: "Graphiste 3D",
    speech: "Réalisation d'images de synthèse, de vidéos, de visites virtuelles, jusqu'aux montages finaux.
      Bac Professionnel Communication Art Graphique 2011 :
      Diplôme Concepteur Réalisateur 3D de l'ESMI 2016 :
      Passionné par l’image de synthèse 3D et le rendu d’architecture, je me suis spécialisé dans ce domaine et le
      compositing.
      Mon expérience et ma maîtrise dans le domaine de la 3D seront au service de votre entreprise pour la
      valorisation de vos projets immobiliers et architecturaux.
      J'accomplis mon travail avec minutie d’après des esquisses, des photos afin que vos maquettes soient
      valorisées au mieux.
      Capable de concevoir des perspectives d'images de synthèse, intérieures et extérieures, en déployant mes
      connaissances dans le domaine de l'imagerie 3D :
      La mise au point des lumières, textures, matériaux et environnements appropriés.
      L'animation des perspectives 3D pour une immersion compléte de visite virtuelle.",
    blog: "https://antoinecoiquaud1991.e-monsite.com",
    instagram: "https://www.instagram.com/antoine__coiquaud/",
    linkedin: "https://www.linkedin.com/in/antoine-coiquaud-5382a9145/",
    facebook: "https://www.facebook.com/antoinecoiquaud3dview.fr/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552475150/Dame%20Jeanne/01.jpg"
  },
  {
    first_name: "Pauline",
    last_name: "Lenain",
    job: "Graphiste / Illustratrice / Packaging",
    speech: "Graphiste indépendante depuis 2013 à Bordeaux, j’allie ma passion pour le vin et les choses
      authentiques au travers de la création d’étiquette de vins.
      Très curieuse des métiers de l’Artisanat et des savoirs-faire, je m’interroge souvent sur le
      temps.
      Les illustrations pour le collectif, sont faite d’une traite et sans correction, j’aime penser
      qu’elles sont l’essence d’un moment, résultant d’un regard à un moment T.
      Ma vision n’étant qu’un point de vue sur des photographies anciennes, je laisse l’illustration
      faire son chemin et vous offrir un petit moment d’histoire.",
    blog: "https://www.graphisme-la-lettre-m.fr",
    instagram: "https://www.instagram.com/Pauline_lenain/",
  },
  {
    first_name: "Amandine",
    last_name: "Thomas",
    job: "Illustratrice et DA print",
    speech: "Après des études d’illustration à l’école Estienne, puis de didactique visuelle aux arts
      décoratifs de Strasbourg, j’ai passé six ans à Melbourne, en Australie, où j’étais directrice
      artistique dans la presse et l’édition. Récemment installée à Bordeaux, je profite de la
      liberté offerte par mon nouveau statut de free-lance pour me replonger dans l’illustration,
      aussi bien éditoriale que jeunesse ou commerciale.
      À travers les illustrations crées pour Dame Jeanne, j’explore ma nouvelle ville, Bordeaux, à
      vue d’oiseau – j’en survole les rues pour mieux cartographier mon quartier, et je m’en
      réapproprie les icônes.",
    blog: "https://www.amandine-thomas.com",
    instagram: "https://www.instagram.com/amandinethomas/",
    facebook: "https://www.facebook.com/helloamandinethomas",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552474967/Dame%20Jeanne/Portrait-AT.jpg"
  },
  {
    first_name: "Marie",
    last_name: "Paruit",
    job: "Illustratrice",
    speech: "Illustration secteur jeunesse ",
    blog: "http://www.marieparuit.ultra-book.com",
    instagram: "https://www.instagram.com/marieparuit/"
  }
]


Artist.create!(artists_attributes)
puts "#{Artist.count} artists created!"

puts "Creating projects..."

  projects_attributes = [
    {
      name: "Bordeaux vintage",
      artist: Artist.find_by(first_name:"Marie")
    },
    {
      name: "Zoom Zoom",
      artist: Artist.find_by(first_name:"Victoire")
    },
    {
      name: "Les trois Grâces",
      artist: Artist.find_by(first_name:"Sybille")
    },
    {
      name: "Projet architectural",
      artist: Artist.find_by(first_name:"Antoine")
    },
    {
      name: "Bordeaux - Les animaux sont dans la place",
      artist: Artist.find_by(first_name:"Liane")
    },
    {
      name: "Bordeaux panoramique",
      artist: Artist.find_by(first_name:"Marc")
    },
    {
      name: "Dégustation en bord d'eau",
      artist: Artist.find_by(first_name:"Marjorie")
    },
    {
      name: "Bordeaux à vol d'oiseau",
      artist: Artist.find_by(first_name:"Amandine")
    },
    {
      name: "La Bordelaise",
      artist: Artist.find_by(first_name:"Camille")
    },
    {
      name: "Le temps",
      artist: Artist.find_by(first_name:"Pauline")
    },
    {
      name: "Sur les rails",
      artist: Artist.find_by(first_name:"Johanna")
    },
  ]

  Project.create!(projects_attributes)
  puts "#{Project.count} projects created!"

  puts "Creating posters..."

  posters_attributes = [
    {
      project: Project.find_by(name:"Bordeaux vintage"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549630638/Dame%20Jeanne/diner-gauche-hommes-avec-matieres.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux vintage"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549630638/Dame%20Jeanne/diner-droite-femme-copie-avec-matieres.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux vintage"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549630638/Dame%20Jeanne/pin-up-velo-avec-matieres.jpg"
    },
    {
      project: Project.find_by(name:"Projet architectural"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552384804/Dame%20Jeanne/ANTOINE_COIQUAUD_02.jpg"
    },
    {
      project: Project.find_by(name:"Projet architectural"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1540541559/Dame%20Jeanne/FINAL_PAVILLON_ADMINISTRATIF_re%CC%81so72.jpg"
    },
    {
      project: Project.find_by(name:"Les trois Grâces"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552385572/Dame%20Jeanne/vin-blanc_RVB_72.jpg"
    },
    {
      project: Project.find_by(name:"Les trois Grâces"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552385572/Dame%20Jeanne/vin-rouge_RVB_72.jpg"
    },
    {
      project: Project.find_by(name:"Les trois Grâces"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552385572/Dame%20Jeanne/Vin-rose%CC%81_RVB_72.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux - Les animaux sont dans la place"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549960981/Dame%20Jeanne/Liane-Victoire-DJ-web.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux - Les animaux sont dans la place"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549015893/Dame%20Jeanne/Liane-Quinconces-web-DJ.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux - Les animaux sont dans la place"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549015893/Dame%20Jeanne/Liane-Stalingrad-web-DJ.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux panoramique"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549284103/Dame%20Jeanne/Panoramique---SaintMichel-2.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux panoramique"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1550658719/Dame%20Jeanne/2-Panoramique-Bourse-1.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux panoramique"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549284103/Dame%20Jeanne/Panoramique---Chartrons-2.jpg"
    },
    {
      project: Project.find_by(name:"Dégustation en bord d'eau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549380776/Dame%20Jeanne/2-affiche-marjorie.jpg"
    },
    {
      project: Project.find_by(name:"Dégustation en bord d'eau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549380772/Dame%20Jeanne/3-affiche-marjorie.jpg"
    },
    {
      project: Project.find_by(name:"Dégustation en bord d'eau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549630638/Dame%20Jeanne/1-affiche-marjorie.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux à vol d'oiseau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549377237/Dame%20Jeanne/AT-Poster-collecif-small.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux à vol d'oiseau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1551272991/Dame%20Jeanne/Poster-2-Amandine.jpg"
    },
    {
      project: Project.find_by(name:"La Bordelaise"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1551175908/Dame%20Jeanne/Affiche_1_Camille_Quid_pour_Dame_Jeanne-WEB.jpg"
    },
    {
      project: Project.find_by(name:"Le temps"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1551175908/Dame%20Jeanne/illu-DAME-JEANNE-WEB.jpg"
    },
    {
      project: Project.find_by(name:"Sur les rails"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1551175908/Dame%20Jeanne/Affiche-grand-theatre-A3moins-web.jpg"
    },
    {
      project: Project.find_by(name:"Zoom Zoom"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552480107/Dame%20Jeanne/Zoom-Zoom-meriadeck-_victoiredelpierre72dpi.jpg"
    },
    {
      project: Project.find_by(name:"Zoom Zoom"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552480107/Dame%20Jeanne/Zoom-Zoom-Larrieu-_victoiredelpierre-72dpi.jpg"
    },
  ]

  Poster.create!(posters_attributes)
  puts "#{Poster.count} posters created!"
