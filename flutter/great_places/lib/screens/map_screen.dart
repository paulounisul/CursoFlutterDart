import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:great_places/models/place.dart';

class MapScreen extends StatefulWidget {
  // const MapScreen({Key? key,}) : super(key: key);

  final PlaceLocation initialLocation;
  final bool isReadonly;

  MapScreen({
    Key? key,
    this.initialLocation = const PlaceLocation(
      latitude: -25.516336,
      longitude: -54.585376,
    ),
    this.isReadonly = false,
  }) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng? _pickedPosition;

  void _selectPosition(LatLng position) {
    setState(() {
      _pickedPosition = position;
      print(_pickedPosition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecione...'),
        actions: <Widget>[
          if (!widget.isReadonly)
            IconButton(
              icon: Icon(Icons.check),
              onPressed: _pickedPosition == null
                  ? null
                  : () {
                      Navigator.of(context).pop(_pickedPosition);
                    },
            )
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            widget.initialLocation.latitude,
            widget.initialLocation.longitude,
          ),
          zoom: 13,
        ),
        onTap: widget.isReadonly ? null : _selectPosition,
        markers: (_pickedPosition == null && !widget.isReadonly)
            ? <Marker>[].toSet()
            : {
                Marker(
                  markerId: const MarkerId('p1'),
                  position:
                      _pickedPosition ?? widget.initialLocation.toLatLng(),
                )
              },
      ),
    );
  }
}
