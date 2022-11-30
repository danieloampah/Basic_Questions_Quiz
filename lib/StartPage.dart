import 'package:flutter/material.dart';

import 'questionsPage.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(28, 28, 28, 1),
        leading: Icon(Icons.settings),
      ),
      backgroundColor: Color.fromRGBO(28, 28, 28, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hoşgeldiniz",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Container(
                width: 450,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/man.png"),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Text("Angel Sara",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text("Balance", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("Rs.111", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 14),),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Text("Rank",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("10",style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 14),),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Text("Lives",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("03",style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 14),),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.asset("assets/images/bg.png"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SoruSayfasi()),);
              },
              child: Text("Quiz'e Başla"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple, padding: EdgeInsets.all(12) ,textStyle: TextStyle(fontSize: 20, wordSpacing: 5)),
            ),
          ],
        ),
      ),
    );
  }
}

/*child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Basit Quiz Uygulaması",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2,
                  letterSpacing: 1),
            ),
            ElevatedButton(
              child: Text("Soruları Görmek İçin Tıklayınız"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SoruSayfasi(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding: EdgeInsets.all(15),
                  textStyle:
                  TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),*/
