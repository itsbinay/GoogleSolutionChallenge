import 'package:GoogleSolChal/widgets/homepage/homepagebutton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: null,
      body:Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/images/homepage/background.jpeg"),
            fit: BoxFit.fitHeight,
            alignment: Alignment.center
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding:EdgeInsets.symmetric(vertical:100)),
            Text(
              "AppName",
              style: TextStyle(
                color:Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              )
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:<Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical:30),
                    child:Text(
                      "Let's make world a better place \n together",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:20
                      )
                    )
                  ),
                  HomeButton(
                    onPressedButton: (){

                    },
                    buttonText: "Get Started ",
                  ),
                  Padding(padding:EdgeInsets.symmetric(vertical:20))
                ]
              )
            )
          ],
        )
      )
    );
  }
}