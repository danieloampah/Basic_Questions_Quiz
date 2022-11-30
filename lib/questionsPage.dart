import 'package:bilgi_yarismasi/lastPage.dart';
import 'package:bilgi_yarismasi/main.dart';
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
  QuestionData test_1 = QuestionData();


  @override
  void initState(){
    super.initState();
    test_1.questionBank.shuffle();

  }

  buttonFunction(bool choiseButton) {
    bool falseAnswer = test_1.getQuestionAnswer();

    if (test_1.quizFinished() == true) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Bravo Testi Geçtiniz"),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      answer = [];
                      test_1.quizReset();
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>const LastPage(),
                      ),
                    );
                  },
                  child: Text("Son Sayfaya Git"),
                ),
              ],
            );
          });
    }

    setState(() {
      falseAnswer == choiseButton
          ? answer.add(kTrueAnswer)
          : answer.add(kFalseAnswer);
      test_1.nextQuestion();
    });
  }

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
                  test_1.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LastPage()),
              );
            },
            child: Text("Diğer Sayfaya Geçmek İçin Tıklayınız"),
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
                            buttonFunction(true);
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
                            buttonFunction(false);
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
