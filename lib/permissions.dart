import 'package:flutter/material.dart';
import 'package:testing/track_info.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:testing/widgets.dart';

class Permissions extends StatefulWidget {
  @override
  _PermissionsState createState() => _PermissionsState();
}

class _PermissionsState extends State<Permissions> {
  int _currentValue = 0;
  bool _value_switch = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EyeMe"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Hay que abrir lista de notificaciones')));
            },
            icon: const Icon(Icons.add_alert),
            tooltip: "Notificaciones",
          ),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {

    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                PermissionSwitch(),
                Container(
                  child: Text("Ubicacion tiempo real"),
                )
              ],
            ),
            Row(
              children: [
                PermissionSwitch(),
                Container(
                  child: Text("Destino"),
                )
              ],
            ),
            Row(
              children: [
                PermissionSwitch(),
                NumberPicker(
                  value: _currentValue,
                  minValue: 0,
                  maxValue: 120,
                  onChanged: (value) => setState(()=> _currentValue = value),
                  step: 10,
                  haptics: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
