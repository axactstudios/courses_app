import 'package:flutter/material.dart';

class AllCoursesTile extends StatefulWidget {
  String imgUrl, title;
  int ratings, price;
  double rating;

  AllCoursesTile(
      {this.price, this.imgUrl, this.ratings, this.title, this.rating});

  @override
  _AllCoursesTileState createState() => _AllCoursesTileState();
}

class _AllCoursesTileState extends State<AllCoursesTile> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: <Widget>[
            Image.network(
              widget.imgUrl,
              height: pHeight * 0.08,
              width: pWidth * 0.25,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: pWidth * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: pWidth * 0.7,
                  child: Text(
                    widget.title,
                    style: TextStyle(fontFamily: 'Cabin'),
                  ),
                ),
                Text(
                  'Rating : ${widget.rating}  (${widget.ratings})',
                  style: TextStyle(fontFamily: 'Cabin'),
                ),
                Text(
                  'Price : ${widget.price}',
                  style: TextStyle(fontFamily: 'Cabin'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
