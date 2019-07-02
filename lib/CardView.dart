import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: FittedBox(
          child: Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(0.0),
            shadowColor: Color(0x802196F3),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image(
                      height: 50.0,
                      width: 50.0,
                      fit: BoxFit.contain,
                      alignment: Alignment.topRight,
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Fast_food_meal.jpg/220px-Fast_food_meal.jpg'),
                    ),
                  ),
                ),
                Container(
                  child: MyProductDetails(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Food Name',
          
        ),
      ],
    );
  }
}
