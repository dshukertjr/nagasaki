import 'package:flutter/material.dart';
import 'package:nagasaki/models/spot.dart';

class SpotPage extends StatelessWidget {
  final String routeName = "spotPage";
  @override
  Widget build(BuildContext context) {
    final Spot spot = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 1,
        child: Hero(
          tag: spot,
          child: Image.asset(
            spot.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
