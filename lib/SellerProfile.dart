import 'package:ecom_v2/ManageOrders.dart';
import 'package:ecom_v2/MyListings.dart';
import 'package:ecom_v2/MyOrders.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // making AppBar with green color and Home Food Text
      appBar: AppBar(
        title: Container(
          // To align the text to the center of the appbar
          padding: const EdgeInsets.only(left: 50.0),
          child: Text(
            // Text with Home Food and white colored font
            'Home Food',
            style: TextStyle(color: Colors.white, fontFamily: 'LiterataBook'),
          ),
        ),
        backgroundColor: Color(0xff4CB5AB),
      ),

      // Body section starts here
      // ListView to enable scrolling horizontally
      body: ListView(
        children: <Widget>[
          // Container with fixed height for profile picture and name
          new Container(
            height: 130.0,
            // Column layout for picture and name
            child: Column(
              children: <Widget>[
                Container(
                  /* decoration: new BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(45.0)),
                    border: new Border.all(color: Colors.black, width: 4.0),
                  ), */
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(
                      'assets/profilepicture.png',
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                Text(
                  'John Doe',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 430.0,
              color: Color(0xff009688),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      height: 200.0,
                      color: Colors.white,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrdersPage()));
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          'My orders >',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LIstings()));
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          'My listings >',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ManageOrders()));
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Manage orders >',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Edit info >',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
