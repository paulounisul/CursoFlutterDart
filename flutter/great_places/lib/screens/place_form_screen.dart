import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart';

import '../widgets/image_input.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();

  void _submitForm() {
    print('Submited form!!');
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
                      decoration: const InputDecoration(
                        labelText: 'Título',
                      ),
                    ),
                    SizedBox(height: 10),
                    ImageInput(),
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
            onPressed: _submitForm,
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