import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_ecom/Pages/MySettings.dart';
import 'package:flutter_ecom/Pages/News.dart';
import 'package:flutter_ecom/Pages/Notifications.dart';
import 'package:flutter_ecom/Pages/ProductDetails.dart';
import 'package:flutter_ecom/Pages/ProfileInfo.dart';
import 'package:flutter_ecom/Pages/SearchPage.dart';
import 'package:flutter_ecom/Products.dart';
import 'package:flutter_ecom/Pages/CartPage.dart';
import 'package:flutter_ecom/HorizontalList.dart';

void main() {
  runApp(
      new MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            new MaterialPageRoute(builder: (context) => new ProdDetails()),
          );
        },
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Fast_food_meal.jpg/220px-Fast_food_meal.jpg'),
            NetworkImage(
                'https://res.cloudinary.com/sagacity/image/upload/c_crop,h_3456,w_5184,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/superdeluxe_owgtql.jpg')
          ],
          autoplay: true,
          //animationCurve: Curves.fastOutSlowIn,
          //animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 6.0,
        ),
      ),
    );
    return Scaffold(
      // AppBar starts here with name and 2 icons

      appBar: new AppBar(
        backgroundColor: Colors.red[300],
        title: Text(
          'Hommy Food',
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
               Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new Search()));
            },
          ),
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
        children: <Widget>[
          image_carousel,
          Divider(
            height: 5.0,
          ),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            height: 5.0,
          ),
          // Horizontal list starts here
          MyHorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Products',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 320.0,
            child: MyProducts(),
          )
        ],
      ),
    );
  }
}
