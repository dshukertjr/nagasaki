import 'package:flutter/material.dart';
import 'package:nagasaki/models/spot.dart';
import 'package:nagasaki/widgets/spotCard.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
  final routeName = "homePage";

  final List<Widget> topWidgets = [
    Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Explore",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "The beautiful city of Nagasaki",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  ];

  final List<Spot> _spots = [
    Spot(
      title: "Huis Ten Bosch",
      description:
          "Huis Ten Bosch is a theme park in Sasebo, Nagasaki, Japan, which recreates the Netherlands by displaying life-sized copies of old Dutch buildings. The name Huis Ten Bosch translates into English as \"House at the Woods/bush\". It is named after Huis ten Bosch in The Hague, one of the three official residences of the Dutch Royal Family.",
      image: "assets/houseTembos.jpeg",
      position: LatLng(33.0857484,129.7858569),
    ),
    Spot(
      title: "Nagasaki Chinatown",
      description:
          "Nagasaki Chinatown is an area located in Nagasaki, Nagasaki, Japan. Today this area is a shopping strip covering many blocks. Most of the Chinese members of Nagasaki Chinatown are of Fuzhounese descent. Nagasaki and Fuzhou established ties as sister cities in 1980 to recognize the historical connections between the two cities and Fuzhounese immigrant community",
      image: "assets/china.jpg",
      position: LatLng(32.7414872, 129.8731198),
    ),
    Spot(
      title: "Spectacles Bridge",
      description:
          "Meganebashi or Spectacles Bridge, over the Nakashima River was built in Nagasaki in 1634 by the Chinese monk Mokusunyoujo who is a second generation of Chinese monks living at Kofukuji Temple.",
      image: "assets/glasses.jpg",
      position: LatLng(32.747146, 129.8779133),
    ),
  ];

  final List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(4, 2),
    const StaggeredTile.count(4, 2),
    const StaggeredTile.count(2, 3),
    const StaggeredTile.count(2, 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _staggeredTiles,
          children: List.from(topWidgets)
            ..addAll(_spots.map((spot) => SpotCard(spot)).toList()),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          padding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
}
