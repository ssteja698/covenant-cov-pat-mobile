import 'package:flutter/material.dart';
import './question.dart';
import './generalAnswer.dart';
import './dropdownAnswer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final List responses;
  var title = "COVID-19 SELF TEST";

  Quiz(this.answerQuestion, this.questionIndex, this.questions, this.responses);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 55, right: 55, bottom: 20),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 50, right: 50),
          child: questions[questionIndex]['image'] != '' ? Image.asset('assets/images/' + questions[questionIndex]['image']) : Text(''),
        ),
        Question(questions[questionIndex]['questionText']),
        GeneralAnswer(answerQuestion, 'YES', responses),
        GeneralAnswer(answerQuestion, 'NO', responses),
        // Container(
        //   margin: EdgeInsets.only(left: 50, right: 50),
        //   child: questions[questionIndex]['isDropdown'] == true ? DropdownAnswer(questions[questionIndex]['answers']) : (GeneralAnswer(answerQuestion, 'YES', responses)),
        // ),
        // if(questions[questionIndex]['isDropdown'] == false) {
        //   GeneralAnswer(answerQuestion, 'NO', responses)
        // } else {
        //  DropdownAnswer(questions[questionIndex]['answers']),
        // }
      ],
    );
  }
}
