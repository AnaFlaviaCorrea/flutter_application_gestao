// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


// ...

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // print('Firebase initialized successfully');
}
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA9qWX85Kc5kE40Mgk9TXlHjodu5L9qjuI',
    appId: '1:857689675871:web:75182a0286d12826b723ea',
    messagingSenderId: '857689675871',
    projectId: 'flutter-application-gestao',
    authDomain: 'flutter-application-gestao.firebaseapp.com',
    databaseURL: 'https://flutter-application-gestao-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-application-gestao.appspot.com',
    measurementId: 'G-84WHGSV8F3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAo2U1sV_WJQuQhJl-ecvNi8h56IJW2C_I',
    appId: '1:857689675871:android:177ad6b18d8bb4c4b723ea',
    messagingSenderId: '857689675871',
    projectId: 'flutter-application-gestao',
    databaseURL: 'https://flutter-application-gestao-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-application-gestao.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCR4jtZpLtdJbolUYf1Moa4MOVo3JKHE-Q',
    appId: '1:857689675871:ios:0ee20177a9d8f109b723ea',
    messagingSenderId: '857689675871',
    projectId: 'flutter-application-gestao',
    databaseURL: 'https://flutter-application-gestao-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-application-gestao.appspot.com',
    iosBundleId: 'com.example.flutterApplicationGestao',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCR4jtZpLtdJbolUYf1Moa4MOVo3JKHE-Q',
    appId: '1:857689675871:ios:4e7cac5051295cf2b723ea',
    messagingSenderId: '857689675871',
    projectId: 'flutter-application-gestao',
    databaseURL: 'https://flutter-application-gestao-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-application-gestao.appspot.com',
    iosBundleId: 'com.example.flutterApplicationGestao.RunnerTests',
  );
}