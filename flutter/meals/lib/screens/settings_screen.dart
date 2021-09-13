import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Function(Settings) onSettingsChanged;
  const SettingsScreen(this.onSettingsChanged);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();

  Widget _createSwitch(
      String title,
      String subtitle,
      bool value,
      Function(bool)
          onChanged //flutter 2 não precisa passar a palavra reservada Function()??
      ) {
    return SwitchListTile(
        title: Text(title),
        value: value,
        onChanged: (value) {
          onChanged(value);
          widget.onSettingsChanged(settings);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _createSwitch(
                  'Sem Gluttén',
                  'Só exibe refeições sem glútem!',
                  settings.isGlutenFree,
                  (value) => setState(
                    () => settings.isGlutenFree = value,
                  ),
                ),
                _createSwitch(
                  'Sem Lactose',
                  'Só exibe refeições sem Lactose!',
                  settings.isLactoseFree,
                  (value) => setState(
                    () => settings.isLactoseFree = value,
                  ),
                ),
                _createSwitch(
                  'Vegana',
                  'Só exibe refeições Veganas!',
                  settings.isVegan,
                  (value) => setState(
                    () => settings.isVegan = value,
                  ),
                ),
                _createSwitch(
                  'Vegetáriana',
                  'Só exibe refeições Vegetarianas!',
                  settings.isVegetarian,
                  (value) => setState(
                    () => settings.isVegetarian = value,
                  ),
                ),
                _createSwitch(
                  'Sem Açucar',
                  'Só exibe refeições sem Açucar!',
                  settings.isSuggarFree,
                  (value) => setState(
                    () => settings.isSuggarFree = value,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
