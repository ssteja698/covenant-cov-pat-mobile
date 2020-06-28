import 'package:flutter/material.dart';

class DropdownAnswer extends StatefulWidget {
  List<String> answers;
  DropdownAnswer(answers);

  @override
  State<StatefulWidget> createState() {
    return _DropdownAnswerState(answers);
  }
}

class _DropdownAnswerState extends State<DropdownAnswer> {
  List<String> answers;
  String _selectedAnswer;

  _DropdownAnswerState(answers);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(answers as String)
    );
    
    // Container(
    //   margin: EdgeInsets.all(30),
    //   child: new DropdownButton<String>(
    //     hint: Text('Please choose an option'),
    //     value: _selectedAnswer,
    //     onChanged: (newValue) {
    //       setState(() {
    //         _selectedAnswer = newValue;
    //       });
    //     },
    //     items: answers.map((String value) {
    //       return new DropdownMenuItem<String>(
    //         value: value,
    //         child: new Text(value),
    //       );
    //     }).toList(),
    //   ),
    // );
  }
}
