import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../services/auth.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthServices _auth = AuthServices();
  final _formkeyy =GlobalKey<FormState>();
  String email="";
  String password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgBlack,
        appBar: AppBar(
          backgroundColor: bgBlack,
          title: Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(" A Register Page allows new users to create an account by providing necessary details such as name, email, password, and other required information. It typically includes input fields, validation checks, and a 'Sign Up' button. A well-designed register page ensures a smooth onboarding experience and enhances security by implementing features like password confirmation and validation.",
                  style: descriptionStyle,textAlign:TextAlign.left ,),
                Center(child: Image.asset("assets/man.png",scale: 5,)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                      key: _formkeyy,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFormField(
                              validator: (Evalue)=>Evalue?.isEmpty == true ? "enter a valid Email":null,
                              decoration:textInputDecoration.copyWith(hintText:"Email"),

                              onChanged: (Evalue){
                                setState(() {
                                  email=Evalue;
                                });
                              }

                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                              validator: (Pvalue)=>Pvalue!.length<6 == true ? "enter a valid Password":null,
                              decoration: textInputDecoration,

                              onChanged: (Pvalue){
                                setState(() {
                                  password=Pvalue;
                                });
                              }

                          ),
                          SizedBox(height: 30,),
                          Text("Login with social Accounts",style: descriptionStyle,),
                          SizedBox(height: 20,),
                          GestureDetector(
                              onTap: (){},
                              child: Image.asset("assets/google.png",scale: 20,)),
                          SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Do not have an account?",style: descriptionStyle),
                              GestureDetector(
                                  onTap: (){},
                                  child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.w600,color: mainBlue),))
                            ],
                          ),
                          SizedBox(height: 20,),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: bgBlack,
                                border: Border.all(width: 2,color: mainYellow),

                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(child: Text("REGISTER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),



                        ],
                      )
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}
