import 'package:GoogleSolChal/screens/register.dart';
import 'package:GoogleSolChal/widgets/fieldinput.dart';
import 'package:GoogleSolChal/widgets/login/googleButton.dart';
import 'package:GoogleSolChal/widgets/loginregisterbutton.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>{

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical:35),
          child:Text(
            "Sign in",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40
            ),
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical:10,horizontal: 35),
          child: FieldInput(
            hintText: "Username",
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            ontextchanged: (){

            },
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical:10,horizontal: 35),
          child: FieldInput(
            hintText: "Password",
            padding: EdgeInsets.symmetric(horizontal: 10,vertical:5),
            ontextchanged: (){

            },
          )
        ),
        Padding(
          padding: EdgeInsets.only(right:35,left:35,top:25),
          child:LoginRegisterButton(
            buttonColor:Color.fromRGBO(37, 122, 16, 1),
            onPressed: (){},
            buttonText: "Login",
            padding:EdgeInsets.symmetric(horizontal:20,vertical:15)
          )
        ),
        Padding(
          padding: EdgeInsets.only(top:20,bottom:10),
          child: Text(
            "OR",
            style: TextStyle(
              fontSize: 16
            ),
          )
        ),
        Padding(
          padding: EdgeInsets.only(top:10,left: 35,right:35,bottom:30),
          child: GoogleButton(
            padding: EdgeInsets.symmetric(horizontal:30,vertical: 10)
          )
        ),
        Padding(
          padding: EdgeInsets.only(top:10,bottom:20),
          child: Text(
            "Dont have an account? Click to register.",
            style: TextStyle(
              color:Colors.grey[500]
            ),
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:35),
          child:LoginRegisterButton(
            buttonColor:Color.fromRGBO(37, 122, 16, 1),
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> Register())
              );
            },
            buttonText: "Register",
            padding: EdgeInsets.symmetric(horizontal:20,vertical: 15),
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical:20),
          child: Column(
            children: <Widget>[
              Text(
                "You are completely safe.",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              Text(
                "Read our Terms & Conditions.",
                style: TextStyle(
                  color:Color.fromRGBO(37, 122, 16, 1),
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          )
        ),
        Padding(padding: EdgeInsets.symmetric(vertical:20),)
      ],
    );
  }
}