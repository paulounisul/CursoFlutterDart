import 'package:flutter/material.dart';
import 'package:great_places/screens/map_screen.dart';

import '../models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Place place = ModalRoute.of(context)?.settings.arguments as Place;

    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 250,
            width: double.infinity,
            child: Image.file(
              place.image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 10),
          Text(
            place.location.address,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          // FlatButton.icon(
          //   onPressed: () {},
          //   icon: Icon(Icons.map),
          //   label: Text('Ver no Mapa'),
          //   textColor: Theme.of(context).primaryColor,
          // ),
          SizedBox(height: 10),
          TextButton.icon(
            icon: Icon(Icons.map),
            label: Text('Ver no Mapa'),
            style: TextButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (ctx) => MapScreen(
                    isReadonly: true,
                    initialLocation: place.location,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
