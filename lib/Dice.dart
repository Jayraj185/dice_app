import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int total = 0, i=0, j=0;
  List img1 = [
    "assets/image/1.png",
    "assets/image/2.png",
    "assets/image/3.png",
    "assets/image/4.png",
    "assets/image/5.png",
    "assets/image/6.png",
  ];
  List img2 = [
    "assets/image/1.png",
    "assets/image/2.png",
    "assets/image/3.png",
    "assets/image/4.png",
    "assets/image/5.png",
    "assets/image/6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dice App"),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/image/Background.png",fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80,top: 100),
              child: Text(
                "TOTAL SCORE\n\n            $total",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35,top: 300),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset(
                    "${img1[i]}",
                    fit: BoxFit.cover
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 210,top: 300),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("${img2[j]}",fit: BoxFit.cover),
              ),
            ),
            InkWell(
              onTap: (){
                var r1 = Random();
                int x = r1.nextInt(6);
                var r2 = Random();
                int y = r2.nextInt(6);
                setState(() {
                  i = x;
                  j = y;
                  x++;
                  y++;
                  total = x+y;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(left: 70,top: 600),
                child: Container(
                  height: 100,
                  width: 1000,
                  child: Stack(
                    children: [
                      Image.asset("assets/image/Button.png",fit: BoxFit.cover),
                      Padding(
                        padding: EdgeInsets.only(left: 60,top: 26),
                        child: Text(
                          "Roll Dice",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
