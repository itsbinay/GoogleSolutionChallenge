import 'package:GoogleSolChal/widgets/gradientButton.dart';
import 'package:GoogleSolChal/widgets/newfieldinput.dart';
import 'package:flutter/material.dart';

class NewRegisterView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _NewRegisterViewState();
}

class _NewRegisterViewState extends State<NewRegisterView>{

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom:10),
          child: Image.asset("assets/images/register/Logo.png")
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:20,vertical:10),
          child: Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.64,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:20,vertical:30) ,
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left:25,right:25,top:0),
                  child: NewFieldInput(
                    hintText: "Name",
                    ontextchanged: null,
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left:25,right:25,top:15),
                  child: NewFieldInput(
                    hintText: "Birth Year (YYYY)",
                    ontextchanged: null,
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left:25,right:25,top:15),
                  child: NewFieldInput(
                    hintText: "Email Address",
                    ontextchanged: null,
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left:25,right:25,top:15),
                  child: NewFieldInput(
                    hintText: "Phone Number (Optional)",
                    ontextchanged: null,
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left:25,right:25,top:15),
                  child: NewFieldInput(
                    hintText: "Password",
                    ontextchanged: null,
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left:25,right:25,top:15),
                  child: NewFieldInput(
                    hintText: "Re-Password",
                    ontextchanged: null,
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:35,vertical:30),
                  child:GradientButton(
                    text: "REGISTER",
                    onPressed: (){},
                  )
                )
              ],
            )
          )
        ),
      ],
    );
  }
}