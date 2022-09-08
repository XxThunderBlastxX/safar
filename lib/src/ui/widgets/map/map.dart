import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    //LatLng(latitude:22.723426, longitude:88.478515)
    LatLng point = LatLng(22.723426, 88.478515);
    // var location = [];
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            zoom: 10.0,
            center: point,
            onTap: (pos, p) {
              setState(() {
                point = p;
                print(point);
                print(pos.global.isFinite);
              });
            },
          ),
          children: [
            TileLayer(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            ),
            MarkerLayer(
              markers: [
                Marker(
                  width: 100.0,
                  height: 100.0,
                  point: point,
                  builder: (ctx) => const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
