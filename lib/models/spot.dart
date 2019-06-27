import 'package:google_maps_flutter/google_maps_flutter.dart';

class Spot {
  Spot({
    this.type,
    this.title,
    this.description,
    this.image,
    this.position,
    this.uri,
  });
  final String type;
  final String title;
  final String description;
  final String image;
  final LatLng position;
  final String uri;
}
