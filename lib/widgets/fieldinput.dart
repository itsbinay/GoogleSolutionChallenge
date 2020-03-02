import 'package:flutter/material.dart';

class FieldInput extends StatelessWidget{
  final Function ontextchanged;
  final EdgeInsetsGeometry padding;
  final String hintText;

  FieldInput({
    key,
    this.padding = const EdgeInsets.symmetric(horizontal:15,vertical:5),
    @required this.ontextchanged,
    @required this.hintText
  });
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color:Colors.white,
        border: Border.all(color:Colors.white),
        borderRadius:BorderRadius.circular(32)
      ),
      padding: this.padding,
      child: TextField(
        onChanged: (String text){
          ontextchanged(text);
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(
            color:Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w200
          ),
          hintText: this.hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 10)
        ),
      ) ,
    );
  }
}