import 'package:flutter/material.dart';


class ProfileLogo extends StatelessWidget{

  final bool editing;
  final Function onChange;
  final AssetImage image;
  final double radius;

  ProfileLogo({
    @required this.editing,
    @required this.onChange,
    this.image,
    this.radius = 140
  });

  @override
  Widget build(BuildContext context){
    return Container(
      width:radius,
      height:radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:Colors.white,
          width:1.0
        )
      ),
      child: Stack(
        alignment:Alignment.bottomCenter,
        children:<Widget>[
          CircleAvatar(
            minRadius: radius/2,
            maxRadius: radius/2,
            backgroundImage: this.image??null,
            backgroundColor: Colors.white,
          ),
          !editing ? 
            //null:
            Container():  //Empty container if it is not Editing
            GestureDetector(
              onTap: onChange(),
              child:Container(    //Gradient Container if is Editing
                width:radius,
                height:radius/2,
                child:Icon(Icons.add,color:Colors.white),
                decoration:BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),bottomRight:Radius.circular(70)),
                  gradient:LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color.fromARGB(110, 93, 196, 249),
                      Color.fromARGB(110, 171, 117, 208),
                    ],
                  )
                )
              )
            )
        ]//
      )
    );
  }
}
