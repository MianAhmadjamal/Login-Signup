
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginsignup/screen/Signin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Image.asset("assets/images/logo-blue.png", scale: 1.5,),
              )
            ],
          ),
          Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Login to your account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            )
          ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0, left: 30, right: 30, ),
                  child: TextField(
                      
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.email_outlined),
                    hint: Text("Please Enter Your Email"),
                    enabledBorder: InputBorder.none
                  ),
                  ),
                ),
              )
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30, right: 30, ),
                  child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    hint: Text("Please Enter Your Password"),
                    prefixIcon: Icon(Icons.password_outlined),
                    
                    enabledBorder: InputBorder.none
                  ),
                  ),
                ),
              )
            ],
          ), 
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MaterialButton(
              minWidth: 300,
              height: 50,
              onPressed: (){
                
              }

            ,
              color: Colors.indigo, child: Text("Log In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ),
          RichText(text: TextSpan(
            text: "Dont have account?",
            style: TextStyle(color: Colors.grey),
          children: [
              TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
                } ,
            text: " Sign In",
            style: TextStyle(color: Colors.indigo)
          )
          ]),)
        ],
      ),
    );
  }
}