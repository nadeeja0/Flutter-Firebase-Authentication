import 'package:firebase_auth_tutorials/constants/colors.dart';
import 'package:firebase_auth_tutorials/constants/styles.dart';
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
      backgroundColor: bgBlack,
      appBar: AppBar(
        backgroundColor: bgBlack,

        actions: [
          ElevatedButton(onPressed: ()async {
            await _auth.signOutt();
          },
              style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(bgBlack) ),

              child:const Icon(Icons.logout,color: Colors.white,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),)),
            SizedBox(height: 20,),
            Center(child: Text("A Home Page serves as the main entry point of an application, providing users with an overview of key features and navigation options. It typically includes a welcoming message, interactive elements, and links to other sections, ensuring a smooth user experience and easy access to important content.",style: descriptionStyle,textAlign:TextAlign.left)),
            Center(child: Image.asset("assets/man.png",scale: 4,)),
          ],
        ),
      ),
      
    );
     
  }
}
