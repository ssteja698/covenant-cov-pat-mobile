import 'package:flutter/material.dart';

class GeneralAnswer extends StatelessWidget {
  final Function selectHandler;
  final String answer;
  final List responses;

  GeneralAnswer(this.selectHandler, this.answer, this.responses);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: ButtonTheme(
            minWidth: 300.0,
            height: 50.0,
            child: new RaisedButton(
              onPressed: () =>
                  {answer == 'YES' ? this.responses.add(1) : this.responses.add(0), this.selectHandler()},
              child: new Text(
                answer,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),
              ),
              color: answer == 'YES' ? Colors.green : Colors.red,
              elevation: 5,
            )));
  }
}
