import 'package:GoogleSolChal/widgets/gradientButton.dart';
import 'package:GoogleSolChal/widgets/login/thirdpartybutton.dart';
import 'package:GoogleSolChal/widgets/newfieldinput.dart';
import 'package:flutter/material.dart';
import 'package:GoogleSolChal/screens/register.dart';

class NewLoginView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _NewLoginViewState();
}

class _NewLoginViewState extends State<NewLoginView>{

  void onSignUp(){

  }

  void onForgotPassword(){

  }
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset("assets/images/login/doubleellipse/ellipse.png"),
        Padding(
          padding: EdgeInsets.symmetric(vertical:30,horizontal:40),
          child: Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat",
              fontSize: 28
            ), 
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:30),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:40,vertical: 30),
            width:MediaQuery.of(context).size.width*0.85,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child:NewFieldInput(
                    hintText: "Email",
                    ontextchanged: (){},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 15),
                  child:NewFieldInput(
                    hintText: "Password",
                    ontextchanged: (){},
                  )
                )
              ],
            )
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical:20,horizontal:50),
          child: GradientButton(
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> Register())
              );              
            },
            text: "SIGN IN",
          )
        ),
        Padding(
          padding: EdgeInsets.only(bottom:30,left:30,right:30),
          child:GestureDetector(
            onTap: (){
              this.onForgotPassword();
            },
            child:Center(
              child:Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color(0xFF96E6A1),
                  fontSize:16
                ),
              )
            )
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ThirdPartyButton(
                  imageAssetPath: "assets/images/login/facebookicon.png",
                  onPressed: (){},
                ),
                ThirdPartyButton(
                  imageAssetPath: "assets/images/login/twittericon.png",
                  onPressed: (){},
                ),
                ThirdPartyButton(
                  imageAssetPath: "assets/images/login/googleicon.png",
                  onPressed: (){},
                )
              ],
            )
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:40,vertical:30),
          child:Divider(
            color: Colors.grey,
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20,right:20,bottom:60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal:5),
                child:Text(
                 "DON'T HAVE AN ACCOUNT?",
                 style: TextStyle(
                   color:Colors.grey,
                   fontWeight: FontWeight.bold
                 ), 
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:5),
                child: GestureDetector(
                  onTap:(){
                    this.onSignUp();
                  },
                  child:Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Color.fromRGBO(150, 230, 161, 1)
                    ),
                  )
                )
              )
            ],
          )
        )
      ],
    );
  }
}