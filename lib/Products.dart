import 'package:flutter/material.dart';
import 'package:flutter_ecom/Pages/ProductDetails.dart';

class MyProducts extends StatefulWidget {
  @override
  _MyProductsState createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {
  var products_list = [
    {
      "picture": "AppIcons/pasta.jpeg",
      "name": "Chicken pasta",
      "category": "pasta",
      "price": 20.0,
    },
    {
      "picture": "AppIcons/pasta2.jfif",
      "name": "Chicken pasta 2",
      "category": "pasta",
      "price": 30.0,
    },
    {
      "picture": "AppIcons/pasta3.jfif",
      "name": "Chicken pasta 3",
      "category": "pasta",
      "price": 30.0,
    },
    {
      "picture": "AppIcons/pasta4.jfif",
      "name": "Chicken pasta 4",
      "category": "pasta",
      "price": 30.0,
    },
    {
      "picture": "AppIcons/pasta5.jfif",
      "name": "Chicken pasta 5",
      "category": "pasta",
      "price": 30.0,
    },
    {
      "picture": "AppIcons/pasta.jpeg",
      "name": "Chicken pasta 6",
      "category": "pasta",
      "price": 30.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_picture: products_list[index]['picture'],
          prod_name: products_list[index]['name'],
          prod_cat: products_list[index]['category'],
          prod_price: products_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_picture;
  final prod_name;
  final prod_cat;
  final prod_price;

  Single_prod({
    this.prod_picture,
    this.prod_name,
    this.prod_cat,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new ProdDetails(
                      prod_details_picture: prod_picture,
                      prod_details_name: prod_name,
                      prod_details_category: prod_cat,
                      prod_details_price: prod_price,
                    )));
              },
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          color: Colors.black),
                    ),
                    title: Text("\$$prod_price",
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.red)),
                    subtitle: Text(prod_cat,
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.black)),
                  ),
                ),
                child: Image.asset(prod_picture, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
    );
  }
}
