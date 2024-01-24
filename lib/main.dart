import 'package:chatapp/Screens/SplashScreens.dart';
import 'package:chatapp/Screens/authScreens/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notification_channel/flutter_notification_channel.dart';
import 'package:flutter_notification_channel/notification_importance.dart';
import 'package:flutter_notification_channel/notification_visibility.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Screens/HomeScreens.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var result = await FlutterNotificationChannel.registerNotificationChannel(
    description: 'Showing Notifications',
    id: 'Chating',
    importance: NotificationImportance.IMPORTANCE_HIGH,
    name: 'Chat Mate',
    visibility: NotificationVisibility.VISIBILITY_PUBLIC,
    allowBubbles: true,
    enableVibration: true,
    enableSound: true,
    showBadge: true,
  );
  print(result);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ChatMate',
      theme: ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
     elevation: 1,
     shadowColor: Colors.black,
     backgroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
      //HomeScreen(),
    );
  }
}


