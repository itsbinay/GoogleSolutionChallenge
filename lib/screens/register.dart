import 'package:GoogleSolChal/widgets/register/newregisterview.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends State<Register>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white ,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD4FC79),
              Color.fromRGBO(150, 230, 161, 0.2)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical:20),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:5),
                    child:IconButton(
                        icon: Icon(
                        Icons.arrow_back_ios,
                        color:Color.fromRGBO(37, 122, 16, 1)
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:0),
                    child:Text(
                      "Back",
                      style: TextStyle(
                        color:Color.fromRGBO(37, 122, 16, 1),
                        fontSize: 20
                      ),
                    ),
                  )
                ],
              ),
            ),
            NewRegisterView()
            //RegisterView()
          ],
        )
      )
    );
  }
}