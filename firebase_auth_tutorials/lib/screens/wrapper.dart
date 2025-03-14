import 'package:firebase_auth_tutorials/models/UserModel.dart';
import 'package:firebase_auth_tutorials/screens/authentication/authenticate.dart';
import 'package:firebase_auth_tutorials/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //the user data that the provider provide this can be a user data or null
    final user = Provider.of<UserModel?>(context);

    if(user != null){
      return Home();

    }else{
      return Home();
    }


  }
}
