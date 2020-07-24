import 'package:coursesapp/Widgets/CourseDetails.dart';
import 'package:flutter/material.dart';

class CategoryCourseTile extends StatefulWidget {
  CategoryCourseTile({this.title, this.ratings, this.rating, this.imgURl});

  String title, imgURl;
  double rating;
  int ratings;

  @override
  _CategoryCourseTileState createState() => _CategoryCourseTileState();
}

class _CategoryCourseTileState extends State<CategoryCourseTile> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseDetails(
              title: widget.title,
              rating: widget.rating,
              ratings: widget.ratings,
              imgUrl: widget.imgURl,
              price: 499,
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: pWidth * 0.98,
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/thumbnail.jpg',
                  height: pHeight * 0.08,
                  width: pWidth * 0.3,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: pWidth * 0.05,
                ),
                Container(
                  width: pWidth * 0.58,
                  child: Column(
                    children: <Widget>[
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontFamily: 'Cabin',
                          fontSize: pHeight * 0.018,
                          color: Colors.black.withOpacity(0.75),
                        ),
                      ),
                      SizedBox(
                        height: pHeight * 0.008,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Instructor\'s Name',
                            style: TextStyle(
                              fontFamily: 'Cabin',
                              fontSize: pHeight * 0.016,
                              color: Colors.black.withOpacity(0.65),
                            ),
                          ),
                          Text(
                            'Rating: ${widget.rating} (${widget.ratings})',
                            style: TextStyle(
                              fontFamily: 'Cabin',
                              fontSize: pHeight * 0.016,
                              color: Colors.black.withOpacity(0.65),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
