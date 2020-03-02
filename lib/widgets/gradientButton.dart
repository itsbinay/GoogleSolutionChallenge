import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget{
  
  final List<Color> gradientColors;
  final Function onPressed;
  final String text;
  final Color textColor;
  final double textSize;
  GradientButton({
    key,
    this.gradientColors = const [
        Color.fromRGBO(150, 230, 161, 0.5),
        Color(0xFFD4FC79),
      ],
    @required this.onPressed,
    @required this.text,
    this.textColor = Colors.white,
    this.textSize = 20
  });
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical:15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors:this.gradientColors
          ),
          borderRadius: BorderRadius.all(Radius.circular(32))
        ),
        child: Center(
          child: Text(
            this.text,
            style:TextStyle(
              color:this.textColor,
              fontSize: this.textSize,
              fontWeight: FontWeight.bold
            )
          ),
        )
      )
    );
  }
}