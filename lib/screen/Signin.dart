
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginsignup/screen/login.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Column(
        
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Image.asset("assets/images/logo-blue.png", scale: 1.5,),
              )
            ],
          ),
          const Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Sign in to your account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            )
          ],
          ),
          const Row(
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
          const Row(
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
          const Row(
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
                    hint: Text("Please Re-Enter Your Password"),
                    prefixIcon: Icon(Icons.password_outlined),
                    
                    enabledBorder: InputBorder.none
                  ),
                  ),
                ),
              )
            ],
          ),
         Padding(
            padding: EdgeInsets.all(25.0),
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
            text: "Already have an account?",
            style: TextStyle(color: Colors.grey),
          children: [
              TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                } ,
            text: " Log In",
            style: TextStyle(color: Colors.indigo)
          )
          ]),)
        ],
      ),
    );
  }
}