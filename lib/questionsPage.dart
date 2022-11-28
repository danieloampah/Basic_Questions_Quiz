import 'package:flutter/material.dart';

import 'constants.dart';
import 'questionClass.dart';
import 'test_data.dart';

class SoruSayfasi extends StatefulWidget {
  const SoruSayfasi({Key? key}) : super(key: key);

  @override
  State<SoruSayfasi> createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> answer = [];
  TestData test_1 = TestData();

  int soruIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Sorular"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  test_1.questionBank[soruIndex].questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          Wrap(
            //Wrap: Taşmaları önlemek amacıyla kullanılır. Taşacak olan widget'ı bir alt satıra indirir.
            spacing: 3,
            runSpacing: 3,
            children: answer,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: ElevatedButton(
                          onPressed: () {
                            bool trueAnswer =
                                test_1.questionBank[soruIndex].questionAnswer;
                            setState(() {
                              /* if (trueAnswer == true) {
                                answer.add(kTrueAnswer);
                              } else {
                                answer.add(kFalseAnswer);
                              }*/
                              trueAnswer == true
                                  ? answer.add(kTrueAnswer)
                                  : answer.add(kFalseAnswer);
                              soruIndex++;
                            });
                          },
                          child: Icon(Icons.thumb_up),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: ElevatedButton(
                          onPressed: () {
                            bool falseAnswer =
                                test_1.questionBank[soruIndex].questionAnswer;
                            setState(() {
                              falseAnswer == false
                                  ? answer.add(kTrueAnswer)
                                  : answer.add(kFalseAnswer);
                              soruIndex++;
                            });
                          },
                          child: Icon(Icons.thumb_down),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
