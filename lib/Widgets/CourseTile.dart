import 'package:coursesapp/Classes/constants.dart';
import 'package:flutter/material.dart';

class CourseTile extends StatefulWidget {
  String imgUrl, title;
  int ratings, price;
  double rating;

  CourseTile({this.title, this.imgUrl, this.price, this.rating, this.ratings});

  @override
  _CourseTileState createState() => _CourseTileState();
}

class _CourseTileState extends State<CourseTile> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            widget.imgUrl,
            height: pHeight * 0.18,
            width: pWidth * 0.6,
            fit: BoxFit.cover,
          ),
          Text(
            widget.title,
            style: TextStyle(
                fontFamily: 'Cabin',
                color: kTextColor.withOpacity(0.6),
                fontSize: 18),
          ),
          Row(
            children: <Widget>[
              Text(
                'Rating : ${widget.rating} (${widget.ratings})',
                style: TextStyle(
                    fontFamily: 'Cabin',
                    color: kTextColor.withOpacity(0.45),
                    fontSize: 14),
              ),
            ],
          ),
          Text(
            'Rs. ${widget.price}',
            style: TextStyle(
                fontFamily: 'Cabin',
                color: kTextColor.withOpacity(0.45),
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
