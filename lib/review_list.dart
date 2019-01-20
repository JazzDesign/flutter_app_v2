import 'package:flutter/material.dart';
import 'review.dart';


class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/review.jpg", "Jason Chicas", "2 Reviews - 5 photos", "Amazing Place, Amazing People."),
        Review("assets/images/review2.jpg", "Sabine Sundfeld", "4 Reviews - 2 photos", "Todo es muy Cool :) ."),
        Review("assets/images/review3.jpg", "Rabely Zepeda", "2 Reviews - 1 photo", "Bonito ambiente.")

      ],
    );
  }

}