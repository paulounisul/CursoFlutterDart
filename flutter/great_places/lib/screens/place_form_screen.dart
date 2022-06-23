import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:great_places/providers/greate_places.dart';
import 'package:great_places/widgets/location_input.dart';
import 'package:provider/provider.dart';
import '../widgets/image_input.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();
  late File _pickedImage;
  LatLng? _pickedPositon;

  void _selectImage(File pickedImage) {
    setState(() {
      _pickedImage = pickedImage;
    });
  }

  void _selectPosition(LatLng position) {
    setState(() {
      _pickedPositon = position;
    });
  }

  bool _isValidForm() {
    return _titleController.text.isNotEmpty &&
        _pickedImage != null &&
        _pickedPositon != null;
  }

  void _submitForm() {
    print('Entrou SubMitForm..');
    if (!_isValidForm()) return;

    if (_titleController.text.isEmpty) {
      return;
    }

    Provider.of<GreatPlaces>(context, listen: false).addPlaces(
      _titleController.text,
      _pickedImage,
      _pickedPositon!,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Lugar'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        labelText: 'Título',
                      ),
                      // onChanged: (text) {
                      //   setState(() {});
                      // },
                    ),
                    SizedBox(height: 10),
                    ImageInput(_selectImage),
                    SizedBox(height: 10),
                    LocationInput(this._selectPosition),
                  ],
                ),
              ),
            ),
          ),
          Text('Teste'),
          RaisedButton.icon(
            icon: Icon(Icons.add),
            label: Text('Adicionar'),
            color: Theme.of(context).accentColor,
            elevation: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: _isValidForm() ? _submitForm : null,
            // onPressed: () {
            //   if (_isValidForm()) {
            //     print('vai salvar...');
            //     _submitForm;
            //   } else {
            //     print('Não vai salvar');
            //   }
          ),
        ],
      ),
    );
  }
}



// Widget build(BuildContext context) {
//     var xData;
//     Socket socket = io('http://10.10.0.103:3001');
//     socket.onConnect((_) {
//       print('connect');
//       socket.emit('msg', 'test');
//     });
//     socket.on('event', (data) {
//       xData = data;
//       print(xData);
//     });
//     socket.onDisconnect((_) => print('disconnect'));
//     socket.on('fromServer', (_) => print(_));
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Novo Lugar'),
//       ),
//       body: Center(
//         child: Text('Form!!!! -> $xData'),
//       ),
//     );
//   }