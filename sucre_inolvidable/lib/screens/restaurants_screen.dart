import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../utils/maps_utils.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  final List<Map<String, dynamic>> _restaurants = const [
    {
      'image': 'assets/images/choriceria 7 lunares.jpg',
      'name_es': 'Choricería 7 lunares',
      'name_en': '7 Lunares Eatery',
      'desc_es':
          'La Tradición Chuquisaqueña. La imagen corresponde a uno de sus puestos más emblemáticos, ubicado dentro del Mercado Central de Sucre, que es el corazón de la gastronomía popular de la ciudad. Aunque la choricería también tiene otro local fuera del mercado, su puesto en el Mercado Central es donde se vive la auténtica experiencia. Son famosos por el Chorizo Chuquisaqueño, que es un plato icónico de la región. El chorizo es típicamente frito y se sirve tradicionalmente en un sándwich con pan, y a menudo se acompaña de una ensalada y una salsa especial (a veces el aceite donde se cocinan). Ofrecen el chorizo en dos presentaciones principales: Chorizo Crudo (el tradicional) y Chorizo Cocido (otra variante). Además del chorizo, en el Mercado Central suelen vender el famoso sándwich de jamón (jamón de cerdo prensado y casero) y otros embutidos tradicionales como el arrollado y el queso de chancho.',
      'desc_en':
          'The image corresponds to one of its most emblematic stalls, located inside the Central Market of Sucre, which is the heart of the city\'s popular gastronomy. Although the choricería also has another location outside the market, its stall in the Central Market is where you can experience the authentic tradition. They are famous for the Chuquisaca Chorizo (Chorizo Chuquisaqueño), which is an iconic dish of the region. The chorizo is typically fried and traditionally served in a sandwich with bread, and is often accompanied by a salad and a special sauce (sometimes the oil in which they are cooked). They offer the chorizo in two main presentations: Raw Chorizo (Chorizo Crudo) and Cooked Chorizo (Chorizo Cocido). In addition to the chorizo, at the Central Market, they usually sell the famous ham sandwich (pressed and homemade pork ham) and other traditional cured meats like arrollado (rolled meat) and queso de chancho (head cheese/pork cheese).',
      'lat': -19.044742,
      'lng': -65.259266,
    },
    //continue
    {
      'image': 'assets/images/monkys churros.jpg',
      'name_es': 'Monkys Churros',
      'name_en': 'Monkys Churros',
      'desc_es':
          'Una churrería moderna que se ha vuelto popular en Sucre. Ofrecen churros rellenos o bañados. Opciones como "Café para llevar" y "Café al paso".',
      'desc_en':
          'A modern churro shop popular in Sucre. They offer filled or coated churros. Options like "Coffee to Go" and "Grab-and-Go Coffee".',
      'lat': -19.048229,
      'lng': -65.261599,
    },
    {
      'image': 'assets/images/Joyride.jpg',
      'name_es': 'Joy Ride Café®',
      'name_en': 'Joy Ride Café®',
      'desc_es':
          'Este local se promociona como "Probablemente el mejor bar restaurante de la ciudad", con un ambiente vibrante y casual. Funciona como café/restaurante de día y bar/discoteca por la noche.',
      'desc_en':
          'This establishment promotes itself as "Probably the best bar restaurant in the city", with a vibrant and casual atmosphere. Operates as a café/restaurant by day and a bar/nightclub by night.',
      'lat': -19.048680,
      'lng': -65.259490,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final langCode = Localizations.localeOf(context).languageCode;

    return Scaffold(
      appBar: AppBar(
        title: Text(loc.restaurants),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: _restaurants.length,
        itemBuilder: (context, index) {
          final rest = _restaurants[index];
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
                    rest['image']!,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        langCode == 'es' ? rest['name_es']! : rest['name_en']!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        langCode == 'es' ? rest['desc_es']! : rest['desc_en']!,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      TextButton.icon(
                        onPressed: () {
                          openMap(rest['lat'], rest['lng']);
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
