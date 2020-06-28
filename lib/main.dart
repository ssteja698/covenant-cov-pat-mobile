import 'package:flutter/material.dart';
import './question.dart';
import './generalAnswer.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var isIntroPage = true;
  var title = "COVID-19 SELF TEST";
  var _responses = [];
  String _selectedAnswer;
  static var country = 'Nigeria';
  var description =
      "This is a COVID-19 self assessment tool that was calibrated based on WHO guidelines. It is not a diagnostic tool.";
  List<String> _languages = [
    'English',
    'Hindi',
    'Yoruba',
    'Hausa',
    'Igbo',
    'Pidgin'
  ];
  String _selectedLanguage;
  final questions = [
    {
      'questionText': 'Do you have cough?',
      'image': 'q1.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Do you have cold or runny nose?',
      'image': 'q2.jpg',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Are you having diarrhea?',
      'image': 'q3.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Do You Experience New loss of taste or smell?',
      'image': 'no-taste.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Are you having sore throat?',
      'image': 'q4.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Do You Have Repeated shaking with chills?',
      'image': '',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Are you having body aches?',
      'image': 'q5.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Are you having a headache?',
      'image': 'q6.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Do you have Fever (Temperature 37.5*C and above)?',
      'image': 'q7.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Are you having difficulty breathing?',
      'image': 'q8.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'Are you experiencing fatigue?',
      'image': 'q9.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText': 'What is your age group?',
      'image': 'q16.png',
      'answers': ['India', 'United States of America', 'Nigeria'],
      //  '20-30', '31-40', '41-50', '51-60', '61-65', '66 and above'],
      'isDropdown': true,
    },
    {
      'questionText': 'Which state in ' + country + 'do you reside?',
      'image': 'q17.png',
      'answers': ['India', 'United States of America', 'Nigeria'],
      'isDropdown': true,
    },
    {
      'questionText': 'Have you travelled recently during the past 14 days?',
      'image': 'q11.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
    {
      'questionText':
          'Do you have a travel history to any of the following states in ' +
              country +
              ' ? If YES, select as many as applicable, If NO, continue',
      'image': 'q12.png',
      'answers': ['Abia', 'Adamawa', 'Akwa Ibom'],
      'isDropdown': true,
    },
    {
      'questionText':
          'Do you have a travel history to any of the following countries in the past 14 days? If YES, select as many as applicable, If NO, continue',
      'image': 'q11.png',
      'answers': [
        'China',
        'India',
        'Indonesia',
        'Japan',
        'Malaysia',
        'Nigeria',
        'Singapore',
        'United States of America'
      ],
      'isDropdown': true,
    },
    {
      'questionText':
          ' Do you have direct contact with or are you taking care of a positive COVID-19 PATIENT?',
      'image': 'q15.png',
      'answers': ['YES', 'NO'],
      'isDropdown': false,
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _selectedAnswer = '';
    });
    (_selectedAnswer as Object).initState()
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: isIntroPage
          ? new Center(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    margin: EdgeInsets.all(5),
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
                    margin: EdgeInsets.all(30),
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
                    margin: EdgeInsets.all(30),
                    child: new DropdownButton<String>(
                      hint: Text('Please choose a language'),
                      value: _selectedLanguage,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLanguage = newValue;
                        });
                      },
                      items: _languages.map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  ButtonTheme(
                      minWidth: 250.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () => setState(() {
                          isIntroPage = false;
                        }),
                        child: new Text('PROCEED'),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        color: Colors.green[700],
                        textColor: Colors.white,
                        elevation: 5,
                      )),
                ]))
          : (_questionIndex < questions.length
              ? (questions[_questionIndex]['isDropdown'] == false
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 55, right: 55, bottom: 20),
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          child: Text(
                            title,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w900),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50, right: 50),
                          child: questions[_questionIndex]['image'] != ''
                              ? Image.asset('assets/images/' +
                                  questions[_questionIndex]['image'])
                              : Text(''),
                        ),
                        Question(questions[_questionIndex]['questionText']),
                        GeneralAnswer(_answerQuestion, 'YES', _responses),
                        GeneralAnswer(_answerQuestion, 'NO', _responses),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 55, right: 55, bottom: 20),
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          child: Text(
                            title,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w900),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50, right: 50),
                          child: questions[_questionIndex]['image'] != ''
                              ? Image.asset('assets/images/' +
                                  questions[_questionIndex]['image'])
                              : Text(''),
                        ),
                        Question(questions[_questionIndex]['questionText']),
                        Container(
                          margin: EdgeInsets.all(30),
                          child: new DropdownButton<String>(
                            hint: Text('Please choose an option'),
                            value: _selectedAnswer,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedAnswer = newValue;
                              });
                            },
                            items: (questions[_questionIndex]['answers']
                                    as List<String>)
                                .map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        ButtonTheme(
                            minWidth: 250.0,
                            height: 50.0,
                            child: RaisedButton(
                              onPressed: _answerQuestion,
                              child: new Text('PROCEED'),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                              color: Colors.green[700],
                              textColor: Colors.white,
                              elevation: 5,
                            )),
                      ],
                    ))
              : Result()),
    ));
  }
}
