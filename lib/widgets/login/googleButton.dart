import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget{
  final EdgeInsetsGeometry padding;
  GoogleButton({
    key,
    @required this.padding,
  });
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color:Colors.white,
        border: Border.all(color:Colors.white),
        borderRadius: BorderRadius.circular(32)
      ),
      padding: this.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/login/googlelogo.png",
            width:40
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:20),
            child:Text(
              "Sign in with Google",
              style: TextStyle(
                color:Color(0xFF4285F4),
                fontSize: 20
              ),
            )
          )
        ],
      )
    );
  }
}