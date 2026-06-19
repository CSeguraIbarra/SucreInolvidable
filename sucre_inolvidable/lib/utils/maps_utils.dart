import 'package:url_launcher/url_launcher.dart';

Future<void> openMap(double latitude, double longitude) async {
  final Uri googleMapUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
  if (!await launchUrl(googleMapUrl, mode: LaunchMode.externalApplication)) {
    throw 'No se pudo abrir Google Maps.';
  }
}
