import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/images/review.jpg";
  String user = "Jason Chicas";
  String detail = "1 Review - 5 photos";
  String comment = "Amazing place, amazing people";
  Review(this.pathImage, this.user, this.detail, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // Stars
    final star_half = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 12.0,
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 12.0,
      ),
    );


    final star = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 12.0,
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          top: 5.0,
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 12.0,
        ),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: 20.0,
              right: 10.0,
          ),
          child: Text(
            detail,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 12.0,
                color: Color(0xFFa3a5a7)
            ),
          ),
        ),
        star,
        star,
        star,
        star_half,
        star_border
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 20.0,
        bottom: 5.0
      ),
      child: Text(
        user,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 15.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment


      ],
    );
    final reviewPhoto = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
        ),
      ),
    );

    return Row(
      children: <Widget>[
        reviewPhoto,
        userDetails
      ],
    );
  }

}