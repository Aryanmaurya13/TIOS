
import 'package:chatapp/Screens/HomeScreens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../Helper/Dialogs.dart';
import '../../../api/api.dart';


class Authentications{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late GoogleSignInAccount userObj;
  Future<UserCredential?>SigninWithGamil(BuildContext context) async {
    await GoogleSignIn().signIn().then((value) async {
      userObj = value!;
      final GoogleSignInAuthentication googleSignInAuthentication = await userObj!.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
      await _auth.signInWithCredential(authCredential).then((value) async {
        Dialogs.showSnackbar(context, "SuccessFully LoggedIn");
        print(" User data $value");
        if(value!=null){
          if((await Api.userExists())){
              Get.offAll(()=>HomeScreen());
        }else{
        await Api.createUser().then((value) {
        Get.offAll(()=>HomeScreen());
        });
        }
      }
        return value;
        // Get.offAll(()=>HomeScreen());

      });
    });
 return null;

  }
}