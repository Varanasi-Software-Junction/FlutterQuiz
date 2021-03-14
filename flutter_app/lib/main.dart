import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(VSJQuizApp());
}

class VSJQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Card(
              child: Text(
                "Quiz App",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.teal,
                ),
              )),
          centerTitle: true,
        ),



        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: VSJQuiz(),
          ),
        ),
      ),
    );
  }
}







class VSJQuiz extends StatefulWidget {
  @override
  _VSJQuizState createState() => _VSJQuizState();
}

class _VSJQuizState extends State<VSJQuiz> {




  List<Widget> scores=[];

  void addResult(bool b)
  {
    //scores.clear();
    if(b)
      {
        scores.add(

            Icon(
                Icons.check,
                color: Colors.green
            )
        );
      }
    else {
      scores.add(

          Icon(
              Icons.close,
              color: Colors.red
          )
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Question Will Come Here',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                print("Submitted True");
                setState(() {
              addResult(true);
                });
               }
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                print("Submitted False");
                setState(() {
                 addResult(false);
                });
              },
            ),
          ),
        ),
       Row
         (
children:scores,

       ),
      ],
    );
  }
}
