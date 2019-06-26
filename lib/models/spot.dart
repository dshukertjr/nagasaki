import 'package:google_maps_flutter/google_maps_flutter.dart';

class Spot {
  Spot({
    this.title,
    this.description,
    this.image,
    this.position,
  });
  final String title;
  final String description;
  final String image;
  final LatLng position;
}
