import 'package:firebase_auth_tutorials/models/UserModel.dart';
import 'package:firebase_auth_tutorials/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {



  //references for the AuthServices class
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN IN"),
      ),
      body: ElevatedButton(
          onPressed: () async{
            dynamic resulut= await _auth.signInAnonymouslyy();
            if(resulut == null){
              print("error in sign in anon");

            }else{
              print("signed in anon");
              print(resulut.uid);

            }
          },
          child: Text("Sign in anonymously")),
    );
  }
}
