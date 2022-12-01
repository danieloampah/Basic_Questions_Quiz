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
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;
    return Scaffold(

      backgroundColor: Color.fromRGBO(28, 28, 28, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hoşgeldiniz",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth / 23,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight / 25,
                  left: screenWidth / 30,
                  right: screenWidth / 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  child: Column(
                    children: [
                      Image.asset("assets/images/man.png"),
                      SizedBox(
                        height: screenHeight / 60,
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                          screenWidth / 40,
                        ),
                        child: Text(
                          "Angel Sara",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: screenHeight / 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Balance",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 25),
                                  ),
                                  Text(
                                    "Rs.111",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 28),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: screenWidth / 6,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Rank",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 25),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 28),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: screenWidth / 6,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Lives",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 25),
                                  ),
                                  Text(
                                    "03",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 28),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Image.asset("assets/images/bg.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.purple,
                          Colors.pink,
                        ]),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.57),
                              blurRadius: 25),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SoruSayfasi()));
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: screenWidth / 25,
                                    horizontal: screenHeight / 30),
                                child: Text("Quiz Başlat"),
                              )),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
