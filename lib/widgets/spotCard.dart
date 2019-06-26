import 'package:flutter/material.dart';
import 'package:nagasaki/models/spot.dart';

class SpotCard extends StatelessWidget {
  final Spot spot;
  SpotCard(this.spot);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "spotPage", arguments: spot);
          },
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Hero(
                  tag: spot,
                  child: Image.asset(
                    spot.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black,
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Text(
                    spot.title,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
