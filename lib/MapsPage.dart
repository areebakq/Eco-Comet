import 'dart:collection';
import 'package:flutter/material.dart';
import 'ImagePage.dart';
import 'main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MaterialApp(
  home: MapsPage(),
));

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  Set<Marker> _markers = HashSet<Marker>();
  GoogleMapController mapController;
  BitmapDescriptor _markerIcon;
  final LatLng _center = const LatLng(32.9857664,-96.752288);

  @override
  void initState() {
    super.initState();
    _setMarkerIcon();
  }

  void _setMarkerIcon() async {
    _markerIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'assets/bin.png');
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

    setState(() {
      _markers.add(
            Marker(
              markerId: MarkerId("0"),
              position: LatLng(32.9857224,-96.752488),
              infoWindow: InfoWindow(
                title: 'Recycle Bin',
                snippet: 'Thank you for recycling!',
              ),
              icon: _markerIcon
            ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Find Disposal Locations on Campus'),
          backgroundColor: Color(0xffa9e5bb),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 15.0,
          ),
          markers: _markers,
        ),
      ),
    );
  }
}