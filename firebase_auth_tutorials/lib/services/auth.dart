import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_tutorials/models/UserModel.dart';

class AuthServices{
  //firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create a user from firebase user with uid
  UserModel? _userWithFirebaseUserUid(User? user){
    return user !=null ?UserModel(uid: user.uid):null;
  }
  //create a stream for checking the auth changes in the user/User
  Stream<UserModel?> get user{
    return _auth.authStateChanges().map(_userWithFirebaseUserUid);
  }

  //sign  in anonymous service eka flutter valata add karana vidiya
Future signInAnonymouslyy() async{
   try{
     UserCredential result=await _auth.signInAnonymously();
     User? user= result.user;
     return _userWithFirebaseUserUid(user);
   }
   catch(err){
     print(err.toString());
     return null;
   }



}
  //register using email and password
  //sign using email and password
  //sign in using gmail
  //sign out
Future signOutt() async{
    try{
      return await _auth.signOut();

    }catch(err){
      print(err.toString());
      return null;
    }

}
}