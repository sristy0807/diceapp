


import 'package:flutter/material.dart';


var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget{

  const GradientContainer({super.key, required this.color1, required this.color2, });
  
  const GradientContainer.purple({super.key})
  : color1 = Colors.deepPurple,
    color2 = Colors.indigo;
  
  final Color color1;
  final Color color2;

  void roleTheDice(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1,color2],
          begin: startAlignment,
          end: endAlignment,
        )
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
            'aa/dice.png',
            width: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: roleTheDice, 
            child: const CustomText('Roll Dice', textColor: Colors.indigo),
            ),
        ],
        ) 
      ),
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