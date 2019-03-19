Artist.destroy_all
Project.destroy_all
Poster.destroy_all

puts "Creating artists..."

artists_attributes = [
  {
    first_name: "Victoire",
    last_name: "Delpierre",
    job: "Designer graphique/Chef de projet Web",
    speech: "Formée à l’École des Beaux Arts de Bordeaux, Victoire Delpierre est designer graphique. Intriguée par les dimensions numériques de l’image et de l’information, elle ajoute à son arc la fonction de cheffe de projet digital. Elle travaille autour de la conception de l’image et de ses enjeux techniques, mais surtout créatifs en interrogeant le lien entre typographie, photographie & graphisme.
      La série Zoom Zoom qu'elle réalise pour le collectif illustré, lui permettent d’attirer l’attention sur des lieux qui la séduisent et de partager le regard qu'elle porte sur certains détails.",
    blog: "https://www.victoirephotos.fr",
    blog2: "https://www.victoiredelpierre.fr/",
    instagram: "https://www.instagram.com/victoiredelpierre/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552479477/Dame%20Jeanne/VictoireDelpierre-photoAlessandraOstolidi.jpg"
  },
  {
    first_name: "Marc",
    last_name: "Lafon",
    job: "Graphiste Web/Print",
    speech: "Graphiste, maquettiste et affichiste travaillant à Bordeaux. Après un BTS en communication graphique et un master en design aux Beaux-Arts, il se spécialise dans la maquette de livre et l’affiche de cinéma, C’est aussi un graphiste touche à tout qui n’hésite pas à explorer des techniques et méthodes pour ne jamais rester en terrain connu et s’adapter à chaque projet.
      Au travers de Dame Jeanne il explore une vision d’un Bordeaux coloré et divers, ne se donnant pas de contraintes, les illustrations pourront varier de style suivant les collections.",
    blog: "https://www.marclafon-design.fr",
    instagram: "https://www.instagram.com/marclafon33/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552479477/Dame%20Jeanne/IMG_8675-copie-WEB.jpg"
  },
  {
    first_name: "Liane",
    last_name: "Langenbach",
    job: "Illustratrice graphiste",
    speech: "Illustratrice graphiste indépendante depuis 2017, Liane dessine et met en scène dans des environnements épurés des personnages ronds et colorés qui ont pour point commun de ne parler que d’écologie et d’environnement. Engagée dans les mouvements Zéro déchet et minimaliste, elle parle de ces sujets sur son blog Lilou Testetou et dans diverses parutions, en parallèle de son travail pour aider les acteurs du changement à mieux communiquer sur leurs projets à impact positif. Bordelaise d’adoption, elle est tombée amoureuse de cette ville et s’attache à mettre en lumière les nombreux projets de développement durable qui s’y forment. Pour cette première saison chez Dame Jeanne, elle a choisi de rendre vivantes les places bordelaises en mettant en avant leurs nombreuses sculptures animales, qui invitent au voyage et à l’imaginaire.",
    blog: "https://www.liane-langenbach.com",
    blog2: "https://www.liloutestetou.com",
    instagram: "https://www.instagram.com/liane.langenbach/",
    facebook: "https://www.facebook.com/liane.langenbach/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552568702/Dame%20Jeanne/Portrait_-Liane.jpg"
  },
  {
    first_name: "Sybille",
    last_name: "Cordeau",
    job: "Graphiste & Webdesigner",
    speech: "Après avoir étudié la mode à Paris, Sybille est retournée dans sa ville natale, Bordeaux, pour suivre une formation de développement web et se lancer en freelance en tant que graphiste et webdesigner. Restant fidèle à sa passion première, elle puise son inspiration dans la mode, l’art et les voyages.
      Ainsi, les illustrations qu’elle a réalisées pour Dame Jeanne sont une personnification du vin rouge, blanc et rosé incarnée par les trois Grâces de la place de la Bourse.",
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
    speech: "Marjorie Goalard est originaire de Bayonne et a débarqué à Bordeaux il y a de ça quelques années. Depuis maintenant 1 an, elle s'est lancée dans l'aventure de graphiste freelance. Dans son travail, Marjorie fait la part belle à l'illustration à travers la création de compositions colorées où se mêlent détails et symboles. Faire partie du collectif Dame Jeanne lui permet de rendre hommage à Bordeaux, devenue sa ville de coeur.",
    blog: "https://www.behance.net/Marjorie-Goalard",
    instagram: "https://www.instagram.com/marjorie.goalard/",
    linkedin: "https://www.linkedin.com/in/marjorie-goalard/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552479477/Dame%20Jeanne/marjorie-portrait-illu.jpg"
  },
  {
    first_name: "Camille",
    last_name: "Quid",
    job: "Illustratrice auteur",
    speech: "Camille Quid est une illustratrice bordelaise installée en free-lance depuis 2012, qui collabore sur des projets tels que sites internet, portraits de famille, cartes illustrées, identités visuelles, magazines.
      Elle publie également sur Instagram des petits croquis quotidiens et humoristiques sur sa vie de femme et mère de 4 enfants.
      En participant au Collectif Dame Jeanne, elle a choisi avec ses affiches d’illustrer « La Bordelaise ». En effet, Camille Quid a à cœur, à l’instar de la parisienne, de mettre en scène La Femme, et en particulier celle qui vit et aime Bordeaux !
      Avec ses dessins, Camille Quid souhaite vous emmener dans son univers féminin, frais et léger, avec une touche d'humour, au travers de petites scènes de vie croquées dans les lieux tant aimés. Ce qu'elle espère c'est que chacun trouve à s’y identifier et y retrouve la Bordelaise qu’il a rencontrée, connue ou croisée. Une phrase accompagne le dessin pour évoquer cet instant volé, où le temps semble s'être arrêté : une anecdote d’un petit moment vécu par cette Bordelaise aux milles facettes !",
    blog: "https://camillequid.bigcartel.com/",
    instagram: "https://www.instagram.com/camille_quid/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1553005014/Dame%20Jeanne/Camille_Quid.jpg"
  },
  {
    first_name: "Johanna",
    last_name: "Maxwell",
    job: "Graphiste web/print",
    speech: "Après des études d’Histoire de l’Art à Bordeaux, puis de communication visuelle
      à l’E.C.V Aquitaine, Johanna est partie faire ses armes à Paris. Elle a travaillé 6
      ans en agence comme web designer puis 2 ans dans une start up en tant que
      responsable graphiste web, print et illustration.
      10 ans, 3 bébés et une pause plus tard, un retour à Bordeaux et rapidement un
      retour à la création.
      A travers Dame Jeanne, elle retrouve la liberté de créer et l’émulation du collectif.
      Quoi de mieux que la belle ville de Bordeaux comme muse ! Une cité chargée
      d’histoire, réussissant l’équibre parfait entre passé et modernité !",
    blog: "http://cargocollective.com/jomaxwell",
    linkedin: "https://www.linkedin.com/in/johanna-de-sigoyer-b5ab091b/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1553006646/Dame%20Jeanne/photo-portrait-johanna-web.jpg"
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
    speech: "Pauline est Graphiste indépendante à Bordeaux depuis 2013. Animée par sa passion pour le vin et les créations authentiques, elle crée des étiquettes de vin dans un style moderne et épuré.
      Très curieuse des métiers de l’Artisanat et des savoir-faire, elle s’interroge souvent sur la notion du temps.
      Ses illustrations pour le collectif sont faites d’une traite et sans correction, car elle aime penser qu’elles sont l’essence d’un moment, résultant d’un regard à un instant T.
      Sa vision n’étant qu’un point de vue sur des photographies anciennes, elle laisse l’illustration faire son chemin et vous offrir un petit moment d’histoire.",
    blog: "https://www.graphisme-la-lettre-m.fr",
    instagram: "https://www.instagram.com/Pauline_lenain/",
    facebook: "https://www.facebook.com/pauline.lenain.1",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552572779/Dame%20Jeanne/PAULINE_LENAIN_ATELIER__ILLUSTRATION_DAME_JEANNE_COLLECTIF.png"
  },
  {
    first_name: "Amandine",
    last_name: "Thomas",
    job: "Illustratrice et DA print",
    speech: "Après des études d’illustration à l’école Estienne, puis de didactique visuelle aux arts
      décoratifs de Strasbourg, Amandine Thomas a passé six ans à Melbourne, en Australie, où
      elle était directrice artistique dans la presse et l’édition. Récemment installée à Bordeaux,
      elle profite de la liberté offerte par son nouveau statut de free-lance pour se replonger dans
      l’illustration, aussi bien éditoriale que jeunesse ou commerciale.
      À travers les illustrations crées pour Dame Jeanne, elle explore sa nouvelle ville, Bordeaux, à
      vol d’oiseau – elle en survole les rues pour mieux cartographier son quartier, et s’en
      réapproprier les icônes.",
    blog: "https://www.amandine-thomas.com",
    instagram: "https://www.instagram.com/amandinethomas/",
    facebook: "https://www.facebook.com/helloamandinethomas",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552474967/Dame%20Jeanne/Portrait-AT.jpg"
  },
  {
    first_name: "Marie",
    last_name: "Paruit",
    job: "Illustratrice",
    speech: "Marie Paruit est née en 1980 dans le sud de la France.  Mieux que l'école, elle se régale de dessiner et  dévorer les histoires de Roald Dahl.
      Plus tard elle étudie à Toulouse et continue à plus de 1000 kms d'apprendre à mieux raconter les histoires.
      Elle est diplômée en création visuelle à  St Luc Tournai.
      Repérée pendant ses études par une éditrice de Casterman, elle publie chez eux son premier album L'arbre sorcier, écrit par MS Roger en 2003.
      Elle travaille majoritairement pour l’édition jeunesse, et ponctuellement pour la pub.
      Elle collabore avec le magazine parental Bubblemag en illustrant les pages Bonnes Manières depuis de nombreuses années.
      Elle a illustré une soixantaine de livres. Ses albums sont traduits en coréen, néerlandais, portugais, italien et allemand et anglais.
      Après s’être baladée en France du Sud au Nord, habité dans le Far West américain,  au sommet d'une très haute tour à Hong Kong, et fait un tour à Paris, Marie Paruit a posé ses valises à Bordeaux avec son mari, leurs 3 garçons et autant de tortues.
      Éblouie par la ville, elle propose de faire se regrouper des créatifs autour de cette pépite. Dame Jeanne est née de cette envie de découvrir et faire découvrir les richesses locales, et de s’émulsionner en coollectif joyeux.",
    blog: "http://www.marieparuit.ultra-book.com",
    instagram: "https://www.instagram.com/marieparuit/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552569103/Dame%20Jeanne/marie-paruit-2018.jpg"
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
      name: "Bx-Bie",
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
      project: Project.find_by(name:"Bx-Bie"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552384804/Dame%20Jeanne/ANTOINE_COIQUAUD_02.jpg"
    },
    {
      project: Project.find_by(name:"Bx-Bie"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1540541559/Dame%20Jeanne/FINAL_PAVILLON_ADMINISTRATIF_re%CC%81so72.jpg"
    },
    {
      project: Project.find_by(name:"Les trois Grâces"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552385572/Dame%20Jeanne/vin-blanc_RVB_72.jpg"
    },
    {
      project: Project.find_by(name:"Les trois Grâces"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552567658/Dame%20Jeanne/vin-rouge_RVB_72.jpg"
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
      project: Project.find_by(name:"Bordeaux à vol d'oiseau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552567532/Dame%20Jeanne/AT-Poster3.jpg"
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
      project: Project.find_by(name:"Sur les rails"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552568357/Dame%20Jeanne/affiche-porte-de-bourgogne-WEB.png"
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
