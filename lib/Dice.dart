import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() {
    return DiceState();
  }

}
class DiceState extends State<Dice>{
  int leftside = 1;
  int rightside = 1;

  changeDice(){
    leftside = Random().nextInt(6) + 1;
    rightside = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: [
              Expanded(
                  // flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:InkWell(child: Image.asset("assets/images/dice${leftside}.png"),
                      onTap: (){
                        // print("left button${leftside}");

                        changeDice();

                        setState(() {

                        });

                        // print("left button${leftside}");
                      },
                  ))),

              Expanded(child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(child: Image.asset("assets/images/dice${rightside}.png"),
                  onTap: (){
                    // print("right button${rightside}");

                    changeDice();

                    setState(() {

                    });

                    // print("right button${rightside}");
                  },
              ))),
            ],
          ),
        ));
  }
}
