import 'package:flutter/material.dart';
import 'package:testing/permissions.dart';

class TrackInfo extends StatefulWidget {

  @override
  TrackInfoState createState() => TrackInfoState();
}

class TrackInfoState extends State<TrackInfo>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("EyeMe"),
        leading:
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          tooltip: "Home",
        ),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => Permissions()
                  ),
                );
              },
              icon: Icon(Icons.add_alert)),
        ],
      ),
      body: body(),
    );
  }

  Widget body(){
    return SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey)
          ),
          child: Row(
            children: [
              Text("Jhaos"),
              Text("Calle Tuerca"),
              Text("06:10"),
              Text("Hace 3 horas")
            ],
          ),
        ),
    );
  }
}