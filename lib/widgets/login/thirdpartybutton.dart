import 'package:flutter/material.dart';

class ThirdPartyButton extends StatelessWidget{
  final Function onPressed;
  final String imageAssetPath;
  final EdgeInsetsGeometry padding;

  ThirdPartyButton({
    key,
    @required this.onPressed,
    @required this.imageAssetPath,
    this.padding = const EdgeInsets.symmetric(horizontal: 20)
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding:this.padding,
        child: Image.asset(this.imageAssetPath)
      )
    );
  }
}