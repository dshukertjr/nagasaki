import 'package:flutter/material.dart';
import 'dart:async';
import 'package:nagasaki/models/spot.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui';

class SpotPage extends StatelessWidget {
  final String routeName = "spotPage";

  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final Spot spot = ModalRoute.of(context).settings.arguments;
    final CameraPosition _spotPosition = CameraPosition(
      target: spot.position,
      // zoom: 14.4746,
      zoom: 14,
    );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Stack(
                  children: <Widget>[
                    Hero(
                      tag: spot,
                      child: Image.asset(
                        spot.image,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black54,
                                    ],
                                  ),
                                ),
                                child: Text(
                                  spot.title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black54,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              spot.description,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).padding.top + 8,
                      left: MediaQuery.of(context).padding.left + 8,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black26, shape: BoxShape.circle),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: GoogleMap(
                  mapType: MapType.normal,
                  markers: {
                    Marker(
                      markerId: MarkerId("mainMarker"),
                      position: spot.position,
                      infoWindow: InfoWindow(
                        title: spot.title,
                      ),
                      icon: BitmapDescriptor.defaultMarker,
                    )
                  },
                  initialCameraPosition: _spotPosition,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
