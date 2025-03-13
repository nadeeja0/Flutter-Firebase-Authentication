import 'package:firebase_auth_tutorials/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create a obj  form AuthServices
  final AuthServices _auth =AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        actions: [
          ElevatedButton(onPressed: ()async {
            await _auth.signOutt();
          }, child:const Icon(Icons.logout))
        ],
      ),
      
    );
     
  }
}
