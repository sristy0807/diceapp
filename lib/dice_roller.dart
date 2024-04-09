import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller ({super.key});

  @override
  State<StatefulWidget> createState() {
      return _DiceRollerState();
  }

}

//'_' initially means private class
class _DiceRollerState extends State<DiceRoller>{

  var activeDiceImage = 'aa/dice-1.png';
  var diceRoll = 2;

  void rollTheDice(){
    diceRoll = randomizer.nextInt(6)+1;
    setState(() {
      activeDiceImage = 'aa/dice-$diceRoll.png';
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: rollTheDice, 
            child: const CustomText('Roll Dice', textColor: Colors.indigo),
            ),
        ],
        );
  }

}


class CustomText extends StatelessWidget{
  const CustomText(this.text,{super.key, required this.textColor});
  
  final String text;
  final Color textColor;

  @override
  Widget build(context) {
    return Text(text, style: 
    TextStyle(
              color: textColor, 
              fontSize: 25,
              )
    );
  }

}