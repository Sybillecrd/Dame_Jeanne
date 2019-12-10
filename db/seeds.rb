Artist.destroy_all
Project.destroy_all
Poster.destroy_all
Post.destroy_all
User.destroy_all

puts "Creating user..."
damejeanne = User.create!(email: "damejeannebordeaux@gmail.com", password: "jeannette33")
puts "#{User.count} users created!"

puts "Creating posts..."

post_one = Post.create!(title: "Vernissage au Node",
            content: "Retrouvez-nous jeudi soir à Le Node Bordeaux pour le vernissage de notre expo qui durera du 3 octobre au 3 novembre ! On sera ravis de vous rencontrer et d’échanger avec vous.
              PS: profitez-en, c’est la dernière occasion de voir la saison 1 de Dame Jeanne... car on vous retrouve très vite pour la saison 2 !",
            created_at: "Jeudi 3 octobre 2019",
            photo: "https://res.cloudinary.com/sybillecrd/image/upload/v1575458641/Dame%20Jeanne/Image_d_iOS_1.jpg")

post_two = Post.create!(title: "Bientôt... Dame Jeanne saison 2 !",
            content: "Les membres de Dame Jeanne ont ressorti leurs crayons, pinceaux et tablettes graphiques, pour commencer à plancher sur la deuxième collection d’affiches... On vous en dit plus très bientôt !
              PS: Saurez-vous en deviner le thème ?",
            created_at: "mercredi 18 septembre 2019",
            photo: "https://res.cloudinary.com/sybillecrd/image/upload/v1575463840/Dame%20Jeanne/Dame_Jeanne_Bordeaux_Saison_2.jpg")

post_three = Post.create!(title: "Vernissage de l'expo Dame Jeanne",
            content: "Merci à tous ceux qui sont venus découvrir la première collection de Dame Jeanne lors du vernissage hier soir ! L'exposition continue tout le week-end au 44 rue Bouquière :
              VENDREDI
              11h-18h
              SAMEDI
              10h-16h
              DIMANCHE
              10h-16h",
            created_at: "09-05-2019",
            photo: "https://res.cloudinary.com/sybillecrd/image/upload/v1575386737/Dame%20Jeanne/VISUELEXPODJ-avril2019.jpg")

post_four = Post.create!(title: "Exposition à l'Espace Saint-Rémi",
            content: "Une belle journée d'exposition à l'espace Saint Rémi pour le collectif Dame Jeanne ! Merci à l'association Autour d'un Piano pour nous avoir invité à participer, dans le cadre de l'évènement PIANO DAY.
              Photographies par Victoire Delpierre.",
            created_at: "Vendredi 29 mars 2019",
            photo: "https://res.cloudinary.com/sybillecrd/image/upload/v1575459809/Dame%20Jeanne/DameJeanne-accrochageEspaceSaintRe%CC%81mi-mars2019-_photovictoiredelpierre_7.jpg")

puts "#{Post.count} posts created!"

puts "Creating artists..."

artists_attributes = [
  {
    first_name: "Victoire",
    last_name: "Delpierre",
    job: "Designer graphique/Chef de projet Web",
    job_en: "Graphic Designer/Web project manager",
    speech: "Formée à l’École des Beaux Arts de Bordeaux, Victoire Delpierre est designer graphique. Intriguée par les dimensions numériques de l’image et de l’information, elle ajoute à son arc la fonction de cheffe de projet digital. Elle travaille autour de la conception de l’image et de ses enjeux techniques, mais surtout créatifs en interrogeant le lien entre typographie, photographie & graphisme.
      La série Zoom Zoom qu'elle réalise pour le collectif illustré, lui permettent d’attirer l’attention sur des lieux qui la séduisent et de partager le regard qu'elle porte sur certains détails.",
    speech_en: "Trained at the School of Fine Arts in Bordeaux, Victoire Delpierre is a graphic designer. Intrigued by the digital dimensions of image and information, she adds another string to her bow as a digital project manager. She works around the conception of the image and its technical, but above all creative issues by questioning the link between typography, photography & graphic design. The Zoom Zoom series, which she creates for the illustrated collective, allows her to draw attention to places that seduce her and to share the way she looks at certain details.",
    blog: "https://www.victoirephotos.fr",
    blog2: "https://www.victoiredelpierre.fr/",
    instagram: "https://www.instagram.com/victoiredelpierre/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552479477/Dame%20Jeanne/VictoireDelpierre-photoAlessandraOstolidi.jpg"
  },
  {
    first_name: "Marc",
    last_name: "Lafon",
    job: "Graphiste Web/Print",
    job_en: "Graphic Designer web/print",
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
    job_en: "Graphic Illustrator",
    speech: "Illustratrice graphiste indépendante depuis 2017, Liane dessine et met en scène dans des environnements épurés des personnages ronds et colorés qui ont pour point commun de ne parler que d’écologie et d’environnement. Engagée dans les mouvements Zéro déchet et minimaliste, elle parle de ces sujets sur son blog Lilou Testetou et dans diverses parutions, en parallèle de son travail pour aider les acteurs du changement à mieux communiquer sur leurs projets à impact positif. Bordelaise d’adoption, elle est tombée amoureuse de cette ville et s’attache à mettre en lumière les nombreux projets de développement durable qui s’y forment. Pour cette première saison chez Dame Jeanne, elle a choisi de rendre vivantes les places bordelaises en mettant en avant leurs nombreuses sculptures animales, qui invitent au voyage et à l’imaginaire.",
    speech_en: "Working as an freelance illustrator and graphic designer since 2017, Liane likes to create sweet and colored characters in simple decors. She focuses her work on topics like environment, zero waste and minimalism, and writes about these matters in Lilou Testetou, an illustrated blog. She also works with eco friendly companies and organizations, helping them developing their communication through illustration and graphic design. She fell in love with the city of Bordeaux when she first arrived there during her studies, and she tries to highlight with her work the various eco friendly projects that are developed in this always evolving city.",
    blog: "https://www.liane-langenbach.com",
    blog2: "https://www.liloutestetou.com",
    instagram: "https://www.instagram.com/liane.illustration/",
    facebook: "https://www.facebook.com/liane.langenbach/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552568702/Dame%20Jeanne/Portrait_-Liane.jpg"
  },
  {
    first_name: "Sybille",
    last_name: "Cordeau",
    job: "Graphiste & Webdesigner",
    job_en: "Graphic Designer & Webdesigner",
    speech: "Après avoir étudié la mode à Paris, Sybille est retournée dans sa ville natale, Bordeaux, pour suivre une formation de développement web et se lancer en freelance en tant que graphiste et webdesigner. Restant fidèle à sa passion première, elle puise son inspiration dans la mode, l’art et les voyages.
      Ainsi, les illustrations qu’elle a réalisées pour Dame Jeanne sont une personnification du vin rouge, blanc et rosé incarnée par les trois Grâces de la place de la Bourse.",
    speech_en: "After studying fashion in Paris, Sybille returned to her hometown, Bordeaux, to take a web development course and start freelancing as a graphic designer and web designer. Remaining faithful to her primary passion, she draws inspiration from fashion, art and travel.
      This way, the illustrations she made for Dame Jeanne are a personification of red, white and rosé wine embodied by the three Graces of the Place de la Bourse.",
    blog: "https://www.sybillecordeau.fr/",
    tumblr: "https://sybillecrd.tumblr.com/",
    linkedin: "https://www.linkedin.com/in/sybille-cordeau/",
    behance: "https://www.behance.net/sybillecordeau",
    dribbble: "https://dribbble.com/sybillecordeau",
    instagram: "https://www.instagram.com/sybillecordeau_webdesign/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552474510/Dame%20Jeanne/IMG_3577.jpg"
  },
  {
    first_name: "Marjorie",
    last_name: "Goalard",
    job: "Graphiste web/print & illustratrice",
    job_en: "Graphic Designer web/print @ Illustrator",
    speech: "Marjorie Goalard est originaire de Bayonne et a débarqué à Bordeaux il y a de ça quelques années. Depuis maintenant 1 an, elle s'est lancée dans l'aventure de graphiste freelance. Dans son travail, Marjorie fait la part belle à l'illustration à travers la création de compositions colorées où se mêlent détails et symboles. Faire partie du collectif Dame Jeanne lui permet de rendre hommage à Bordeaux, devenue sa ville de coeur.",
    speech_en: "Marjorie Goalard comes from Bayonne and arrived in Bordeaux a few years ago. Since last year, she started the adventure of freelance graphic designer. Her work of illustrations gathers colourful compositions that combine details and symbols. Being a part of the collective Dame Jeanne allows Marjorie to show her love for Bordeaux, which became her favorite city.",
    blog: "https://www.behance.net/Marjorie-Goalard",
    instagram: "https://www.instagram.com/marjorie.goalard/",
    linkedin: "https://www.linkedin.com/in/marjorie-goalard/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552479477/Dame%20Jeanne/marjorie-portrait-illu.jpg"
  },
  {
    first_name: "Camille",
    last_name: "Quid",
    job: "Illustratrice auteur",
    job_en: "Illustrator author",
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
    job_en: "Graphic Designer web/print",
    speech: "Après des études d’Histoire de l’Art à Bordeaux, puis de communication visuelle
      à l’E.C.V Aquitaine, Johanna est partie faire ses armes à Paris. Elle a travaillé 6
      ans en agence comme web designer puis 2 ans dans une start up en tant que
      responsable graphiste web, print et illustration.
      10 ans, 3 bébés et une pause plus tard, un retour à Bordeaux et rapidement un
      retour à la création.
      À travers Dame Jeanne, elle retrouve la liberté de créer et l’émulation du collectif.
      Quoi de mieux que la belle ville de Bordeaux comme muse ! Une cité chargée
      d’histoire, réussissant l’équibre parfait entre passé et modernité !",
    linkedin: "https://www.linkedin.com/in/johanna-de-sigoyer-b5ab091b/",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1553006646/Dame%20Jeanne/photo-portrait-johanna-web.jpg"
  },
  {
    first_name: "Antoine",
    last_name: "Coiquaud",
    job: "Graphiste 3D",
    job_en: "3D Graphic Artist",
    speech: "À gauche, Bordeaux se repère
      33 cm pour sa jaune pierre
      Une topé de choix parmi ces monuments,
      Où chacun trouve un souvenir en grattant
      Comme le Grand Théatre et ses arches,
      Où le premier verre est souvent pris sur les marches,
      À entendre les talons claquer qui font de la musique
      Au pavillon administratif massif du Jardin Public
      Qui ne s'est pas dans l'herbe un aprem allongé ?
      Les cailloux valsent, car les enfants ne cessent de bouger
      Jusqu'à cet angle arrondi de la Maison du vin,
      Qui n'a pas siroté un rouge même hors festin ?
      Ou en terrasse, sur les quais avec son copain ?
      Coupe le tout en deux pour deux différents teints,
      Avec les couleurs de la Colombie, défi certain
      Carthagène et ses façades vives,
      Couleur chaude, tel un café corsé qui ravive
      Perçu, sous un son de percu, d'un groupe en impro dans la rue,
      Sous un ciel dégagé et les rayons de soleil venus
      L'eau transparente carte postale, d'une plage au sable fin doré
      De la matière, de la diversité, juste au toucher, sous le regard des bordelais,
      Mariage entre Bordeaux et la Colombie, rien à rajouter : Inspiré.",
    speech_en: "On the left, Bordeaux and it’s typical yellow stone.
      A great panel of monuments, where everyone has memories.
      Like under the arches of the Grand Theater, where a first glass of wine is often drank on the steps.
      Heels are slamming on the pavement, making music.
      Or in the massive administrative pavilion of the Public Garden.
      Who has never lied there in the grass in the afternoon ?
      The pebbles waltz as children run around.
      And then, the rounded corner of the House of Wine.
      Who has never sipped a glass of red wine on the terrace, on at the waterfront, with friends ?
      Halve everything and add new tints : Colombia’s colors, a true challenge.
      Imagine Cartagena and its bright facades.
      Colours are warm like local coffee.
      Percussions are all around, groups are jamming.
      Skies are clear, rays of sun coming through.
      The water, transparent, picture-perfect. A beach with fine golden sand.
      Just a touch of textures and diversity, for the eyes of an unsuspecting Bordelais.
      A marriage between Bordeaux and Colombia, nothing to add : Inspired",
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
    job_en: "Graphic Designer / Illustrator / Packaging",
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
    job_en: "Illustrator & AD print",
    speech: "Après des études d’illustration à l’école Estienne, puis de didactique visuelle aux arts
      décoratifs de Strasbourg, Amandine Thomas a passé six ans à Melbourne, en Australie, où
      elle était directrice artistique dans la presse et l’édition. Récemment installée à Bordeaux,
      elle profite de la liberté offerte par son nouveau statut de free-lance pour se replonger dans
      l’illustration, aussi bien éditoriale que jeunesse ou commerciale.
      À travers les illustrations crées pour Dame Jeanne, elle explore sa nouvelle ville, Bordeaux, à
      vol d’oiseau – elle en survole les rues pour mieux cartographier son quartier, et s’en
      réapproprier les icônes.",
    speech_en: "After studying illustration at the école Estienne, then visual didactic at the arts décoratifs de Strasbourg, Amandine Thomas spent six years in Melbourne, Australia, where she became the art director of quarterly magazine Dumbo Feather. Now based in Bordeaux, she takes full advantage of the freedom offered by her freelance status to dive back into illustration, both editorial and commercial. Through her Dame Jeanne illustrations, she takes a bird-eye view of her new city, Bordeaux - flying above the streets to better map her neighbourhood, and reclaim its iconic elements.",
    blog: "https://www.amandine-thomas.com",
    instagram: "https://www.instagram.com/amandinethomas/",
    facebook: "https://www.facebook.com/helloamandinethomas",
    avatar: "https://res.cloudinary.com/sybillecrd/image/upload/v1552474967/Dame%20Jeanne/Portrait-AT.jpg"
  },
  {
    first_name: "Marie",
    last_name: "Paruit",
    job: "Illustratrice",
    job_en: "Illustrator",
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
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1557994940/Dame%20Jeanne/Antoine_Coiquaud_Gd_Theatre.jpg"
    },
    {
      project: Project.find_by(name:"Bx-Bie"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1557912777/Dame%20Jeanne/Antoine_Coiquaud_Pavillon.jpg"
    },
    {
      project: Project.find_by(name:"Bx-Bie"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1557912777/Dame%20Jeanne/Antoine_Coiquaud_Maison_du_Vin.jpg"
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
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1556111587/Dame%20Jeanne/LIAN-3.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux - Les animaux sont dans la place"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1556111587/Dame%20Jeanne/LIAN-1.jpg"
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
      project: Project.find_by(name:"Dégustation en bord d'eau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549380776/Dame%20Jeanne/2-affiche-marjorie.jpg"
    },
    {
      project: Project.find_by(name:"Dégustation en bord d'eau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1549380772/Dame%20Jeanne/3-affiche-marjorie.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux à vol d'oiseau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1569848082/Dame%20Jeanne/AT-Poster3.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux à vol d'oiseau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1551272991/Dame%20Jeanne/Poster-2-Amandine.jpg"
    },
    {
      project: Project.find_by(name:"Bordeaux à vol d'oiseau"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1569848102/Dame%20Jeanne/AT-Poster-Bourse.jpg"
    },
    {
      project: Project.find_by(name:"La Bordelaise"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1558605615/Dame%20Jeanne/Camille_Quid_Jardin_Public.jpg"
    },
    {
      project: Project.find_by(name:"La Bordelaise"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1558605615/Dame%20Jeanne/Camille_Quid_Cite%CC%81_du_Vin.jpg"
    },
    {
      project: Project.find_by(name:"Le temps"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1551175908/Dame%20Jeanne/illu-DAME-JEANNE-WEB.jpg"
    },
    {
      project: Project.find_by(name:"Le temps"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1554280403/Dame%20Jeanne/CAPUCINS_PAULINE_LENAIN_LA_LETTRE_M_BD.png"
    },
    {
      project: Project.find_by(name:"Le temps"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1554280402/Dame%20Jeanne/ST_EMILION_PAULINE_LENAIN__LA_LETTRE_M_BD.png"
    },
    {
      project: Project.find_by(name:"Sur les rails"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1553166525/Dame%20Jeanne/Affiche-grand-theatre-WEB.png"
    },
    {
      project: Project.find_by(name:"Sur les rails"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1553166526/Dame%20Jeanne/affiche-cite-du-vin-WEB.png"
    },
    {
      project: Project.find_by(name:"Sur les rails"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552568357/Dame%20Jeanne/affiche-porte-de-bourgogne-WEB.png"
    },
    {
      project: Project.find_by(name:"Zoom Zoom"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552480107/Dame%20Jeanne/Zoom-Zoom-Larrieu-_victoiredelpierre-72dpi.jpg"
    },
    {
      project: Project.find_by(name:"Zoom Zoom"),
      picture: "https://res.cloudinary.com/sybillecrd/image/upload/v1552480107/Dame%20Jeanne/Zoom-Zoom-meriadeck-_victoiredelpierre72dpi.jpg"
    },
  ]

  Poster.create!(posters_attributes)
  puts "#{Poster.count} posters created!"
