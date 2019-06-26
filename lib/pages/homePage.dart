import 'package:flutter/material.dart';
import 'package:nagasaki/models/spot.dart';
import 'package:nagasaki/widgets/spotCard.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
          Text("The beautiful city of Nagasaki"),
        ],
      ),
    ),
  ];

  final List<Spot> _spots = [
    Spot(
      title: "House Tembos",
      description: "It's a famous Holand themed park.",
      image: "assets/houseTembos.jpeg",
    ),
    Spot(
      title: "House Tembos",
      description: "It's a famous Holand themed park.",
      image: "assets/china.jpg",
    ),
    Spot(
      title: "Spectacles Bridge",
      description:
          "Meganebashi or Spectacles Bridge, over the Nakashima River was built in Nagasaki in 1634 by the Chinese monk Mokusunyoujo who is a second generation of Chinese monks living at Kofukuji Temple.",
      image: "assets/glasses.jpg",
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
