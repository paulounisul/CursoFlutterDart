/* import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [];

  @override
  void initState() {3
    fetchData();
    super.initState();
  }

  void fetchData() async {
    final response =
        await http.get('http://10.0.2.2/fluttertest/fetch_data.php');

    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text(data[index]['title']),
              )),
    );
  }
}
 */

import 'package:mysql1/mysql1.dart';
import 'dart:io';

Future main() async {
  // Open a connection (testdb should already exist)
  final connection = await MySqlConnection.connect(new ConnectionSettings(
    host: '10.10.0.100',
    port: 3306,
    user: 'root',
    password: 'agilshop2015',
    db: 'elega2',
  ));

  stdout.write("Qual Operção ?");
  var intEmpresa = stdin.readLineSync();
  var results = await connection.query(
      'select nota,data,frete2 from fil080 where operacao = ?', [intEmpresa]);

  print('----Nota---Fecha------Valor');

  for (var row in results) {
    print(
        'Nota: ${row[0].toString().padLeft(7, '0')},${row[1].toString().substring(0, 10)},${row[2]}');
  }

  // Finally, close the connection
  await connection.close();
}
