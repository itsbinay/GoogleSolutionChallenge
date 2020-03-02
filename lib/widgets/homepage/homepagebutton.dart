import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget{

  final double height;
  final Function onPressedButton;
  final List<Color> colorList;
  final String buttonText;

  HomeButton({
    key,
    this.height = 40,
    @required this.onPressedButton,
    this.colorList = const [
        Color.fromRGBO(86,154,75,0),
        Color.fromRGBO(86,154,75,1)
      ],
    @required this.buttonText
  });
  @override
  Widget build(BuildContext context){
    return Container(
      height:this.height,
      color:Colors.transparent,
      child: RaisedButton(
        color:Colors.transparent,
        onPressed: (){
          onPressedButton();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(120),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: this.colorList,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight
            )
          ),
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  this.buttonText,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    color:Colors.white,
                    fontSize:20
                  )
                ),
                Icon(
                  Icons.arrow_forward,
                  color:Colors.white
                )
              ],
            )
          )
        )
      )
    );
  }
}