import 'package:flutter/material.dart';

import 'StartPage.dart';
import 'questionsPage.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  const BilgiTesti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      );
  }
}

