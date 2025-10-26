import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbicacionScreen extends StatelessWidget {
  const UbicacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const LatLng ubicacionHotel = LatLng(-12.024275, -75.233942);

    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: ubicacionHotel,
          zoom: 16,
        ),
        markers: {
          const Marker(
            markerId: MarkerId("hotel_andino"),
            position: ubicacionHotel,
            infoWindow: InfoWindow(title: "Hotel Andino"),
          ),
        },
      ),
    );
  }
}
