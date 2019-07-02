import 'package:flutter/material.dart';
import 'package:flutter_ecom/Pages/CartPage.dart';
import 'package:flutter_ecom/Pages/News.dart';
import 'package:flutter_ecom/Pages/Notifications.dart';
import 'package:flutter_ecom/Pages/ProfileInfo.dart';
import 'package:flutter_ecom/main.dart';

class MySettings extends StatefulWidget {
  @override
  _ProdDetailsState createState() => _ProdDetailsState();
}

class _ProdDetailsState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
         title: Text(
          'My Settings',
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
     bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new MyHomePage()));
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new CartPage()));
              },
            ),
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new MyNews()));
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new MyNotification()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new ProfileInfo()));
              },
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[],
      ),
    );
  }
}
