import 'package:flutter/material.dart';
import 'package:flutter_ecom/Pages/MySettings.dart';

class Checkout extends StatefulWidget {
  @override
  _ProdDetailsState createState() => _ProdDetailsState();
}

class _ProdDetailsState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
         title: Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red[300],
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new MySettings()));
            },
          ),
        ],
      ),
      // Bottom AppBar starts here

      body: new ListView(
        children: <Widget>[],
      ),
    );
  }
}
