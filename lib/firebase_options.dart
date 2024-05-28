// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBvgm40a7UcWHxYaZLGo7B5TDyxRMiALs',
    appId: '1:772435422035:android:8664881ac38df0bb2e0fa6',
    messagingSenderId: '772435422035',
    projectId: 'chatmate-d0c9f',
    storageBucket: 'chatmate-d0c9f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWpYTKhFM4zR8gib_6GJ-y0A0rhP4BD70',
    appId: '1:772435422035:ios:c460a4e18b4d9a462e0fa6',
    messagingSenderId: '772435422035',
    projectId: 'chatmate-d0c9f',
    storageBucket: 'chatmate-d0c9f.appspot.com',
    androidClientId: '772435422035-1vk54pb2of7l2gac32tshcaiifhn1sq0.apps.googleusercontent.com',
    iosClientId: '772435422035-h5rc765ufjke7dndt7r5020d27cfkvnf.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatapp',
  );

}