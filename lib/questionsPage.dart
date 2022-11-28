import 'package:flutter/material.dart';

import 'constants.dart';


class SoruSayfasi extends StatefulWidget {
  const SoruSayfasi({Key? key}) : super(key: key);

  @override
  State<SoruSayfasi> createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> answer = [];
  List<String> questions = [
    "Havaya atılan bir madeni paranın tura gelme ihtimali 1/2'dir.",
    "Q klavyede Q harfinin sağ yanında W harfi vardır",
    "-2 çift sayıdır.",
    "Muğla Marmara bölgesi'ndedir.",
    "Türkiye, Birleşmiş Milletler üyesidir.",
    "ABD, NATO üyesidir.",
    "12 Eylül darbesi 1982 yılında gerçekleşmiştir.",
    "Bursa, Marmara Bölgesi'ndedir.",
    "Bütün rakamların çarpımı 0'dır.",
    "Flört kelimesi 1 hecelidir.",
    "Noktainazar trafik polisi anlamına gelen bir kelimedir.",
    "Hakkari, güneydoğu anadolu bölgesi'ndedir.",
    "Kuzey İrlanda Birleşik Krallık'a bağlıdır.",
    "Trakta 3 heceli bir kelimedir.",
    "Kadınlarda 23, erkeklerde 46 kromozom bulunur.",
    "İtalya'da Bir Türk Sevdim romanındaki Türk'ün adı Mehmet'tir.",
    "Balonla Beş Hafta kitabında gezilen kıta Asya'dır.",
    "Uruguay'ın resmi adı Uruguay Doğu Cumhuriyeti'dir.",
    "Su deniz seviyesinde 100 derecenin altında buharlaşabilir.",
    "Karbonatın yapısında karbon bulunmaz",
  ];

  int soruIndex=0;
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
                  questions[soruIndex],
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
                            setState(() {
                              soruIndex++;
                              answer.add(kTrueAnswer);
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
                            setState(() {
                              soruIndex++;
                              answer.add(kFalseAnswer);
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
