import 'package:flutter/material.dart';
import 'package:testing/track_info.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _Track(_text){
    return Text(_text);
  }

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
          )
        ],
      ),
      body: _body(),
    );
  }

  Widget _list_buttom(){
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => TrackInfo()
          ),
        );
      }, child: Text("Go to tracks"),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
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
                          _list_buttom();
                          return _Track(position.toString());
                        },
                      ),
                    ),
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
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      color: Colors.green,
                      height: 150,
                      width: 150,
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
