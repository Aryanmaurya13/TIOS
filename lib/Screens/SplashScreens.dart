import 'package:chatapp/Screens/HomeScreens.dart';
import 'package:chatapp/Screens/authScreens/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/api.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1),(){
      if(Api.auth.currentUser!=null){
        Get.offAll(()=>HomeScreen());
      }else{
        Get.offAll(()=>LoginScreen());
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: AssetImage("lib/assets/images/conversation.png"),width: 150,)),
          Center(child:
           Text("Chat Mate")
          ),
          SizedBox(height: 200,),

        ],
      ),
    );
  }
}
