import 'package:flutter/material.dart';
import 'package:testing/track_info.dart';

import 'permissions.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EyeMe"),
        actions: <Widget>[
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
          automaticallyImplyLeading: false
      ),
      body: _body(),
    );
  }

  Widget _Track(_text){
    return Text(_text);
  }

  Widget _list_buttom(_text){
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => TrackInfo()
          ),
        );
      }, child: _Track(_text),
    );
  }
  Widget _body() {

    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Column(
                    children: [
                      Text("Tracks"),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          color: Colors.blue,
                          height: 150,
                          width: 150,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: 20,
                            itemBuilder: (context, position){
                              return _list_buttom(position.toString());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Column(
                    children: [
                      Text("Trackers"),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          color: Colors.yellow,
                          height: 150,
                          width: 150,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: 20,
                            itemBuilder: (context, position){
                              return _list_buttom(position.toString());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      color: Colors.red,
                      height: 25,
                      width: 100,
                      child: Text("Recibir Track"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      color: Colors.green,
                      height: 25,
                      width: 100,
                      child: Text("Solicitar track"),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
