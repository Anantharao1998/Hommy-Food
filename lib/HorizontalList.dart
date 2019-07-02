import 'package:flutter/material.dart';
import 'package:flutter_ecom/Pages/SearchPage.dart';

class MyHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            Image_location: 'AppIcons/ic1.png',
            Image_caption: 'Deserts',
          ),
          Category(
            Image_location: 'AppIcons/ic2.png',
            Image_caption: 'Breads',
          ),
          Category(
            Image_location: 'AppIcons/ic3.png',
            Image_caption: 'Soups',
          ),
          Category(
            Image_location: 'AppIcons/ic4.png',
            Image_caption: 'Western Cuisine',
          ),
          Category(
            Image_location: 'AppIcons/ic5.png',
            Image_caption: 'Local Cuisine',
          ),
          Category(
            Image_location: 'AppIcons/ic6.png',
            Image_caption: 'Pastry',
          ),
          Category(
            Image_location: 'AppIcons/ic7.png',
            Image_caption: 'Drinks',
          ),
          Category(
            Image_location: 'AppIcons/ic8.png',
            Image_caption: 'Fusion',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String Image_location;
  final String Image_caption;

  Category({
    this.Image_location,
    this.Image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            new MaterialPageRoute(builder: (Context) => new Search())
          );
        },
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              Image_location,
              width: 80.0,
              height: 60.0,
            ),
            subtitle: Text(
              Image_caption,
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
