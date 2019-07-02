import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_ecom/Pages/CartPage.dart';
import 'package:flutter_ecom/Pages/MySettings.dart';
import 'package:flutter_ecom/Pages/News.dart';
import 'package:flutter_ecom/Pages/Notifications.dart';
import 'package:flutter_ecom/Pages/ProfileInfo.dart';
import 'package:flutter_ecom/main.dart';

class ProdDetails extends StatefulWidget {
  final prod_details_name;
  final prod_details_category;
  final prod_details_price;
  final prod_details_location;
  final prod_details_picture;

  ProdDetails({
    this.prod_details_name,
    this.prod_details_category,
    this.prod_details_price,
    this.prod_details_location,
    this.prod_details_picture,
  });

  @override
  _ProdDetailsState createState() => _ProdDetailsState();
}

class _ProdDetailsState extends State<ProdDetails> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: InkWell(
        onTap: () {},
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
      appBar: new AppBar(
        title: Text(
          'Product Name',
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
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new MyNews()));
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
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new ProfileInfo()));
              },
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Price'),
              Text('Name'),
              Text('Category'),
              Text('Sell Location'),
              Text('Rating')
            ],
          )
        ],
      ),
    );
  }
}
