import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var title = "COVID-19 SELF TEST";
  var descriptionHeading = "RESULT";
  var description = "Your risk of having COVID-19 is";
  var resultText = 'High';

  @override
  Widget build(BuildContext context) {
    return new Center(
        child:
            new Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: EdgeInsets.all(30),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(50),
        child: Image.asset('assets/images/doc3.png'),
      ),
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 70),
        child: Text(
          descriptionHeading,
          style: TextStyle(
              height: 1.8,
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.8),
          maxLines: 5,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Text(
          description,
          style: TextStyle(
              height: 1.8,
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8),
          maxLines: 5,
        ),
      ),
      Container(
        margin: EdgeInsets.all(5),
        child: Text(
          resultText,
          style: TextStyle(
              height: 1.8,
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8),
          maxLines: 5,
        ),
      ),
    ]));
  }
}
