import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../utils/maps_utils.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  final List<Map<String, dynamic>> _places = const [
    {
      'image': 'assets/images/plaza_25_de_mayo.jpg',
      'name_es': 'Plaza 25 de Mayo',
      'name_en': '25 de Mayo Square',
      'desc_es':
          'El corazón histórico de Sucre, rodeado de edificios coloniales.',
      'desc_en':
          'The historical heart of Sucre, surrounded by colonial buildings.',
      'lat': -19.04785,
      'lng': -65.25970,
    },
    {
      'image': 'assets/images/catedral basilica_.jpg',
      'name_es': 'Catedral Basílica',
      'name_en': 'Cathedral Basilica',
      'desc_es':
          'Su larga historia de construcción se refleja en una rica mezcla de estilos principalmente renacentista y barroco. Se encuentra en la Plaza 25 de Mayo, frente al núcleo de la vida colonial donde se ubican los principales edificios gubernamentales.',
      'desc_en':
          'Its long history of construction is reflected in a rich mix of mainly Renaissance and Baroque styles. It is located in Plaza 25 de Mayo, in front of the colonial heart of the city where the main governmental buildings are found.',
      'lat': -19.048611,
      'lng': -65.259820,
    },
    {
      'image': 'assets/images/supermercado SAS.jpg',
      'name_es': 'Supermercado SAS',
      'name_en': 'SAS Supermarket',
      'desc_es':
          'El propietario del supermercado SAS es Gonzalo Argandoña Fernández de Córdoba, quien también es vicepresidente del Banco Nacional de Bolivia. Ubicado en la calle Nicolás Ortiz Nro. 331, en el centro de Sucre.',
      'desc_en':
          'The owner of SAS Supermarket is Gonzalo Argandoña Fernández de Córdoba, who is also the vice president of the National Bank of Bolivia. Located at Nicolás Ortiz Street No. 331, downtown Sucre.',
      'lat': -19.051054,
      'lng': -65.261724,
    },
    {
      'image': 'assets/images/ex facultad de derecho.jpg',
      'name_es': 'Ex Facultad de Derecho',
      'name_en': 'Former Faculty of Law',
      'desc_es':
          'El edificio que albergó la antigua Facultad de Derecho tiene profundas raíces coloniales, siendo originalmente la sede del Colegio de Santiago, una institución precursora de la actual USFX. El histórico edificio se encuentra en el centro de Sucre, a pocos metros del edificio central de la universidad y cerca de la imponente torre de la Iglesia de San Miguel. Actualmente se ubica en la Calle Junín.',
      'desc_en':
          'The building that housed the former Faculty of Law has deep colonial roots, having originally been the headquarters of the Colegio de Santiago, a precursor to the current USFX. The historic building is located in downtown Sucre, a few meters from the university\'s main building and near the imposing tower of the San Miguel Church. It is currently located on Junín Street.',
      'lat': -19.046544,
      'lng': -65.260876,
    },
    {
      'image': 'assets/images/kultur berlin_.jpg',
      'name_es': 'Kultur Berlín',
      'name_en': 'Kultur Berlin Hostel',
      'desc_es':
          'El albergue es conocido por su ambiente festivo y por ser un punto de encuentro para viajeros internacionales que visitan Sucre. El bar y la discoteca son características centrales del establecimiento, conocidas por ofrecer fiestas con "barra libre ilimitada" y música variada como reggaetón, techno y éxitos comerciales. Se encuentra a solo dos cuadras de la Plaza 25 de Mayo, en el centro de la ciudad.',
      'desc_en':
          'The hostel is known for its festive atmosphere and for being a meeting point for international travelers visiting Sucre. The bar and nightclub are central features of the establishment, known for offering parties with "unlimited open bar" and a variety of music such as reggaeton, techno, and commercial hits. It is located just two blocks from Plaza 25 de Mayo, in the city center.',
      'lat': -19.049284,
      'lng': -65.256809,
    },
    {
      'image': 'assets/images/castillo de la glorieta.jpg',
      'name_es': 'Castillo de la Glorieta',
      'name_en': 'La Glorieta Castle',
      'desc_es':
          'El Castillo de la Glorieta, construido en las afueras de Sucre, Bolivia, entre 1893 y 1897 por el arquitecto Antonio Camponovo, fue la extravagante residencia de Francisco Argandoña Revilla y su esposa, Clotilde Urioste de Argandoña. La pareja, inmensamente rica gracias a la minería y conocidos por su filantropía y viajes por Europa, diseñó el castillo como una muestra de las diversas arquitecturas que admiraban, resultando en un estilo ecléctico que mezcla gótico, barroco, mudéjar y más. El hecho más importante de su historia ocurrió en 1898, cuando el Papa León XIII les otorgó el título de Príncipes de la Glorieta en reconocimiento a sus obras de caridad (especialmente un orfanato), convirtiendo al castillo en la sede del único Principado Pontificio en la historia de Bolivia. Tras la muerte de los príncipes, el castillo pasó a manos del Estado y sirvió como escuela militar por décadas. Hoy es un Monumento Nacional de Bolivia, conservado como un testimonio arquitectónico único y el recuerdo de su singular historia real.',
      'desc_en':
          'The Castillo de la Glorieta (Glorieta Castle), built on the outskirts of Sucre, Bolivia, between 1893 and 1897 by the architect Antonio Camponovo, was the extravagant residence of Francisco Argandoña Revilla and his wife, Clotilde Urioste de Argandoña. The couple, immensely wealthy thanks to mining and known for their philanthropy and travels through Europe, designed the castle as a showcase of the various architectural styles they admired, resulting in an eclectic style that blends Gothic, Baroque, Mudéjar, and more. The most significant event in its history occurred in 1898, when Pope Leo XIII granted them the title of Princes of La Glorieta in recognition of their charitable work (especially an orphanage), making the castle the seat of the only Pontifical Principality in Bolivian history. Following the death of the princes, the castle passed into state hands and served as a military school for decades. Today, it is a National Monument of Bolivia, preserved as a unique architectural testament and a remembrance of its singular royal history.',
      'lat': -19.084514,
      'lng': -65.268681,
    },
    //continue
    {
      'image': 'assets/images/casa de la libertad.jpg',
      'name_es': 'Casa de la Libertad',
      'name_en': 'Freedom House',
      'desc_es':
          'Casa de la Libertad en Sucre, Bolivia. Es uno de los monumentos históricos más importantes de Bolivia, considerado como la "Cuna de la Patria" o el "Templo de la Democracia". Es el lugar donde se llevó a cabo la Asamblea Deliberante de las provincias del Alto Perú (actual Bolivia), convocada por el Mariscal Antonio José de Sucre en 1825. En este salón se proclamó la Declaración de Independencia de Bolivia el 6 de agosto de 1825, dando nacimiento a la República. Desde la fundación de la República y hasta 1898, el edificio fue la sede del Congreso boliviano, donde se sancionó la primera Constitución. Fue declarado Primer Monumento Nacional de Bolivia. Arquitectura.',
      'desc_en':
          'The House of Liberty (Casa de la Libertad) in Sucre, Bolivia. It is one of Bolivia\'s most important historical monuments, considered the "Cradle of the Nation" or the "Temple of Democracy." It is the place where the Deliberative Assembly of the provinces of Upper Peru (now Bolivia) was held, convened by Marshal Antonio José de Sucre in 1825. The Declaration of Independence of Bolivia was proclaimed here on August 6, 1825. From the founding of the Republic until 1898, the building served as the seat of the Bolivian Congress. It was declared the First National Monument of Bolivia.',
      'lat': -19.047438,
      'lng': -65.260122,
    },
    {
      'image': 'assets/images/palacio de la prefectura_.jpg',
      'name_es': 'Palacio de la Prefectura de Chuquisaca',
      'name_en': 'Chuquisaca Prefecture Palace',
      'desc_es':
          'Palacio de la Prefectura de Chuquisaca (también conocido históricamente como Palacio Nacional o Palacio de Gobierno) en Sucre, Bolivia. Este edificio es uno de los más emblemáticos que rodea la Plaza 25 de Mayo, junto a la Casa de la Libertad y la Catedral Metropolitana. Actualmente, es la sede de la Gobernación Departamental de Chuquisaca. Originalmente, fue construido para ser la Casa Presidencial de la República de Bolivia.',
      'desc_en':
          'This building is one of the most emblematic surrounding the Plaza 25 de Mayo, alongside the Casa de la Libertad and the Metropolitan Cathedral. Currently, it is the seat of the Departmental Government of Chuquisaca. It was originally built to be the Presidential House of the Republic of Bolivia.',
      'lat': -19.04785,
      'lng': -65.25970,
    },
    {
      'image': 'assets/images/temploy convento_.jpg',
      'name_es': 'Templo y Convento de San Felipe Neri',
      'name_en': 'Convent and Temple of San Felipe Neri',
      'desc_es':
          'En Sucre, Bolivia. Es una de las joyas arquitectónicas más importantes y uno de los principales atractivos turísticos de la ciudad, Patrimonio de la Humanidad por la UNESCO. Es el monumento más destacado de estilo neoclásico en Sucre. Se inició su construcción en 1795 y se concluyó alrededor de 1799-1800. El principal atractivo es la visita a sus terrazas (techos) y bóvedas, que ofrecen la mejor vista panorámica de la ciudad de Sucre. Desde la azotea, se puede caminar entre sus cúpulas techadas con tejas de estilo colonial y sus torres.',
      'desc_en':
          'In Sucre, Bolivia. It is one of the most important architectural jewels and a key tourist attraction of the city, a UNESCO World Heritage Site. It is the most outstanding neoclassical-style monument in Sucre. Its construction began in 1795 and was completed around 1799-1800. The main attraction is visiting its terraces (rooftops) and domes, which offer the best panoramic view of Sucre. From the rooftop, one can walk among its domes covered with colonial-style tiles and towers.',
      'lat': -19.050257,
      'lng': -65.261065,
    },
    {
      'image': 'assets/images/san francisco_javier.jpg',
      'name_es':
          'Edificio Central de la Universidad Mayor Real y Pontificia de San Francisco Xavier de Chuquisaca (USFX)',
      'name_en':
          'Central Building of the Royal and Pontifical Higher University of Saint Francis Xavier of Chuquisaca (USFX)',
      'desc_es':
          'Ubicado en Sucre, la capital constitucional de Bolivia. Esta es una de las instituciones educativas más importantes y antiguas de América Latina. Fue fundada el 27 de marzo de 1624, lo que la convierte en la universidad más antigua de Bolivia y la tercera universidad más antigua de América Latina que se mantiene en funcionamiento.',
      'desc_en':
          'Located in Sucre, the constitutional capital of Bolivia. This is one of the most important and oldest educational institutions in Latin America. It was founded on March 27, 1624, making it the oldest university in Bolivia and the third oldest in Latin America still in operation.',
      'lat': -19.045823,
      'lng': -65.259680,
    },
    {
      'image': 'assets/images/parquecretacico.jpg',
      'name_es': 'Parque Cretacico',
      'name_en': 'Cretaceous Park',
      'desc_es':
          'El Parque Cretácico se originó en 1994 con el descubrimiento de la pared de Cal Orck\'o cerca de Sucre, que alberga más de 5.000 huellas de dinosaurios fosilizadas, la mayor concentración del mundo. Las huellas son únicas porque se encuentran en una pared de piedra caliza casi vertical, levantada por movimientos geológicos. Para proteger y mostrar este tesoro paleontológico, el parque fue inaugurado en 2006.',
      'desc_en':
          'The Parque Cretácico (Cretaceous Park) originated in 1994 with the discovery of the Cal Orck\'o wall near Sucre, which harbors over 5,000 fossilized dinosaur footprints, the largest concentration in the world. The tracks are unique because they are on a nearly vertical limestone wall lifted by geological movements. The park was inaugurated in 2006 to protect and showcase this paleontological treasure.',
      'lat': -19.006398,
      'lng': -65.236355,
    },
    {
      'image': 'assets/images/castillo de la glorieta.jpg',
      'name_es': 'Castillo de la Glorieta',
      'name_en': 'La Glorieta Castle',
      'desc_es':
          'El Castillo de la Glorieta, construido en las afueras de Sucre, Bolivia, entre 1893 y 1897 por el arquitecto Antonio Camponovo, fue la residencia de Francisco Argandoña Revilla y Clotilde Urioste de Argandoña. Es un Monumento Nacional de Bolivia, conservado como testimonio arquitectónico único y recuerdo de su historia real.',
      'desc_en':
          'The Castillo de la Glorieta (Glorieta Castle), built on the outskirts of Sucre, Bolivia, between 1893 and 1897 by architect Antonio Camponovo, was the residence of Francisco Argandoña Revilla and Clotilde Urioste de Argandoña. It is a National Monument of Bolivia, preserved as a unique architectural testament and a remembrance of its royal history.',
      'lat': -19.084514,
      'lng': -65.268681,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final langCode = Localizations.localeOf(context).languageCode;

    return Scaffold(
      appBar: AppBar(
        title: Text(loc.places),
        backgroundColor: Colors.teal[700],
      ),
      body: ListView.builder(
        itemCount: _places.length,
        itemBuilder: (context, index) {
          final place = _places[index];
          return Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: Image.asset(
                    place['image']!,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        langCode == 'es'
                            ? place['name_es']!
                            : place['name_en']!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        langCode == 'es'
                            ? place['desc_es']!
                            : place['desc_en']!,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      TextButton.icon(
                        onPressed: () {
                          openMap(place['lat'], place['lng']);
                        },
                        icon: const Icon(Icons.location_on, color: Colors.red),
                        label: Text(
                          langCode == 'es' ? 'Ver en mapa' : 'View on map',
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
