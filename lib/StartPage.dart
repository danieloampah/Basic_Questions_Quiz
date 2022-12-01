import 'package:flutter/material.dart';
import 'questionsPage.dart';


void main() {(runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: StartPage(),
) ));
}


class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {



  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double profileHeight = 100;
    final double containerHeight = 140;
    final bottom = containerHeight  - profileHeight/3;
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return SafeArea(
      child: Scaffold(

        backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
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

              SizedBox(height: 15,),

              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [

                  Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight / 25,
                      left: screenWidth / 30,
                      right: screenWidth / 30),
                  child: Container(
                    height: containerHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [

                        SizedBox(
                          height: screenHeight / 60,
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                            screenWidth / 15,
                          ),
                          child: const Text(
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

                  Positioned(
                    bottom: bottom,
                    child: CircleAvatar(
                      radius: profileHeight/3,
                      backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/man.png")),
                  ),
                  
                  ],
              ),


              Image.asset("assets/images/bg.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.purple,
                            Colors.pink,
                          ]),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const <BoxShadow>[
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
                                  disabledBackgroundColor: Colors.transparent,
                                  disabledForegroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {

                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: screenWidth / 25,
                                      horizontal: screenHeight / 30),
                                  child: const Text("Quiz Başlat"),
                                )),
                          ),
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
        ),
    );

  }
}
