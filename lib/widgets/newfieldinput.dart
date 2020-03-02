import 'package:flutter/material.dart';

class NewFieldInput extends StatelessWidget{
  final Function ontextchanged;
  final EdgeInsetsGeometry contentpadding;
  final String hintText;

  NewFieldInput({
    key,
    this.contentpadding = const EdgeInsets.symmetric(horizontal:10,vertical:5),
    @required this.ontextchanged,
    @required this.hintText
  });

  @override
  Widget build(BuildContext context){
    return Container(
      child:  TextField(
        onChanged: (String text){
          ontextchanged(text);
        },
        decoration: InputDecoration(
          hintText:this.hintText,
          contentPadding: this.contentpadding,
          hintStyle: TextStyle(
            color:Colors.grey[200],
            fontSize: 25,
          )
        ),
      ),
    );
  }
}