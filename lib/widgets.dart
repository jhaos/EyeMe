import 'package:flutter/material.dart';

class PermissionSwitch extends StatefulWidget{
  @override
  _PermissionSwitchState createState() => _PermissionSwitchState();

}

class _PermissionSwitchState extends State<PermissionSwitch>{
  bool _valueSwitch = false;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Switch.adaptive(
        value: _valueSwitch,
        onChanged: (value){
          setState(() {
            _valueSwitch = value;
          });
        });
  }

}