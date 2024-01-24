import 'package:chatapp/Screens/HomeScreens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../Helper/Dialogs.dart';
import '../../api/api.dart';
import 'FirebaseFunctionalities/Authentication.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<LoginScreen> {
  bool _Animation=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        _Animation=true;
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Welcome to Chat Mate'),
      ),
      body: Column(
        children: [
       SizedBox(height: 150,),
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _Animation?1:0,
            child: Center(child: Image.asset('lib/assets/images/speech.png',scale: 1.5,)),
          ),
          ElevatedButton.icon(onPressed: () async {
            Dialogs.showProgressBar(context);
            bool result = await InternetConnectionChecker().hasConnection;
            if(result == true) {
              print('YAY! Free cute dog pics!');
              Authentications().SigninWithGamil(context).then((User) async {

              });
            } else {
              print('No internet :( Reason:');
              Navigator.of(context).pop();
              Dialogs.showSnackbar(context, "No Internet Please connect with the internet");
            }

          }, icon: Icon(Icons.g_mobiledata_rounded,color: Colors.black,),
          label: Text("Sigin with Google"),
      ),
        ],
      ),
    );
  }
}
