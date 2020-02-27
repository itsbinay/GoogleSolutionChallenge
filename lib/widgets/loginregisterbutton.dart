import 'package:flutter/material.dart';

class LoginRegisterButton extends StatelessWidget{
  final Function onPressed;
  final String buttonText;
  final double fontSize;
  final Color buttonColor;
  final Color fontColor;
  final Widget icon;
  final EdgeInsetsGeometry padding;

  LoginRegisterButton({
    key,
    @required this.buttonText,
    this.fontSize=20,
    this.fontColor = Colors.white,
    @required this.buttonColor,
    this.icon,
    @required this.padding,
    @required this.onPressed
  }): super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap:(){
        onPressed();
      },
      child: Container(
        padding: this.padding,
        decoration:BoxDecoration(
          color: this.buttonColor,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            this.icon??Container(),
            Text(
              this.buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: this.fontColor,
                fontSize: this.fontSize
              ),
            )
          ]
        )
      )
    );
  }
}