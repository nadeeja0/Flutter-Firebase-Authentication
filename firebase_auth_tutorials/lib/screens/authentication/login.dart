import 'package:firebase_auth_tutorials/constants/colors.dart';
import 'package:firebase_auth_tutorials/constants/styles.dart';
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
  final _formkeyy =GlobalKey<FormState>();
  String email="";
  String password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        backgroundColor: bgBlack,
        title: Text("SIGN IN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(" Sign-In Page allows users to access their accounts securely by entering their credentials, such as email/username and password. It typically includes options for password recovery and social media login for convenience. A well-designed sign-in page ensures a seamless and secure user experience.",
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
                          decoration: textInputDecoration.copyWith(hintText:"Email"),

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
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){},
                            child: Image.asset("assets/google.png",scale: 20,)),
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Do not have an account?",style: descriptionStyle),
                            GestureDetector(
                              onTap: (){},
                                child: Text("Register",style: TextStyle(fontWeight: FontWeight.w600,color: mainBlue),))
                          ],
                        ),
                        SizedBox(height: 10,),
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
                            child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                            child: Center(child: Text("LOGIN AS GUEST",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                          ),
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

// ElevatedButton(
// onPressed: () async{
// dynamic resulut= await _auth.signInAnonymouslyy();
// if(resulut == null){
// print("error in sign in anon");
//
// }else{
// print("signed in anon");
// print(resulut.uid);
//
// }
// },
// child: Text("Sign in anonymously")),
