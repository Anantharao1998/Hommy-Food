/*

// DEPENDENCIES:
  - LiterataBook font family and its bold variant.
  - images/nasi_dagang.jpg
  - images/nasi_daging.jpg
  - images/nasi_kerabu.jpg

*/

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home Food',
          style: TextStyle(
            fontFamily: 'LiterataBook',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: DrawerNav(),
      body: ProductList(),
    );
  }
}

class DrawerNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.teal[100],
        child: ListView(
          padding: EdgeInsets.only(top: 40.0),
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 120.0,
            ),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'LiterataBook',
              ),
              textAlign: TextAlign.center,
            ),
            Divider(height: 48.0, color: Color.fromARGB(0, 0, 0, 0)),
            GestureDetector(
              onTap: () {
                print('Open profile');
              }, // TODO: Implement navigation to profile page
              child: Text(
                'Profile',
                style: TextStyle(fontFamily: 'LiterataBook'),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(height: 24.0, color: Color.fromARGB(0, 0, 0, 0)),
            GestureDetector(
              onTap: () {
                print('Open favourites');
              }, // TODO: Implement navigation to favourites page
              child: Text(
                'Favourites',
                style: TextStyle(fontFamily: 'LiterataBook'),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(height: 24.0, color: Color.fromARGB(0, 0, 0, 0)),
            GestureDetector(
              onTap: () {
                print('Open notifications');
              }, // TODO: Implement navigation to notifications page
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Notifications',
                    style: TextStyle(fontFamily: 'LiterataBook'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    '(0)', // TODO: Implement notifications counter
                    style: TextStyle(
                        fontFamily: 'LiterataBook', color: Colors.redAccent),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Divider(height: 24.0, color: Color.fromARGB(0, 0, 0, 0)),
            GestureDetector(
              onTap: () {
                print('Open setting');
              }, // TODO: Implement navigation to setting page
              child: Text(
                'Setting',
                style: TextStyle(fontFamily: 'LiterataBook'),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String id, _image, _title, _seller, _price, _description;

  ProductCard(
      this.id, this._image, this._title, this._seller, this._price, this._description);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 12.0),
            width: 380.0,
            height: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              image: DecorationImage(
                image: ExactAssetImage(_image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 380.0,
            padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 2.0),
            color: Colors.teal[100],
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _title,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      _seller,
                      style: TextStyle(color: Color.fromARGB(172, 0, 0, 0)),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  color: Colors.teal,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add, color: Colors.white),
                      Text('Add to cart',
                          style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text(_price, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ProductCard(
          '0001',
          'images/nasi_kerabu.jpg',
          'Nasi Kerabu',
          'Kak Senak',
          "RM17.90",
          'Very Delicious Fried Rice. 10/10.',
        ),
        ProductCard(
          '0001',
          'images/nasi_daging.jpg',
          'Nasi Daging',
          'Kak Enak',
          "RM39.90",
          'Very Delicious Fried Rice. 10/10.',
        ),
        ProductCard(
          '0001',
          'images/nasi_dagang.jpg',
          'Nasi Dagang',
          'Kak Senah',
          "RM14.90",
          'Very Delicious Fried Rice. 10/10.',
        ),
        ProductCard(
          '0001',
          'images/nasi_kerabu.jpg',
          'Nasi Keselasa',
          'Kak Benak',
          "RM7.90",
          'Very Delicious Fried Rice. 10/10.',
        ),
      ],
    );
  }
}
