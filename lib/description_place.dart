import 'package:flutter/material.dart';
import 'review_list.dart';

class DescriptionPlace extends StatelessWidget{
  String namePlace;
  int stars;
  String descriptionPlace;
  String dummyDescription = "Antigua es una ciudad pequeña rodeada de volcanes que se encuentra en el sur de Guatemala. Es conocida por sus edificios coloniales españoles, muchos de los cuales se renovaron tras el terremoto de 1773 que acabó con el reinado de 200 años de Antigua como capital colonial de Guatemala. Entre los monumentos arquitectónicos destaca la achaparrada iglesia barroca de La Merced, de color blanco y amarillo, que forma parte integral de la famosa Semana Santa de la ciudad, durante la cual se organizan desfiles y rituales.";

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // Stars
    final star_half = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );


    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 11.0,
          color: Color(0xFF56575a)
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title_stars = Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: 320.0,
                  left: 20.0,
                  right: 20.0
              ), //EdgesInsets.only
              child: Text(
                namePlace,
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: <Widget>[
                star,
                star,
                star,
                star,
                star_half
              ],
            ),
          ],
        ),
        Column(
          children: <Widget>[
            description,
          ],
        ),
      ],
    );
    return title_stars;
  }

}