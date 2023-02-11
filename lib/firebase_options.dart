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
      return web;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC4r4Kh4eewEg6hsRn5jHJo5mEzFCoSQOk',
    appId: '1:825561770347:web:4da4223d95b70fd9e4c42e',
    messagingSenderId: '825561770347',
    projectId: 'pridge-3b4f9',
    authDomain: 'pridge-3b4f9.firebaseapp.com',
    storageBucket: 'pridge-3b4f9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgRgVE_pY6noqw5S-p691TlbCCi2OGRL4',
    appId: '1:825561770347:android:8535a9dc884f616de4c42e',
    messagingSenderId: '825561770347',
    projectId: 'pridge-3b4f9',
    storageBucket: 'pridge-3b4f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSaT676iquX1Okhb9-nP05vvy4h3bbAD4',
    appId: '1:825561770347:ios:7af65b7886efed6de4c42e',
    messagingSenderId: '825561770347',
    projectId: 'pridge-3b4f9',
    storageBucket: 'pridge-3b4f9.appspot.com',
    iosClientId: '825561770347-5qd2cpvf3jp6tmbijne82oaoafkv736r.apps.googleusercontent.com',
    iosBundleId: 'com.example.padProject',
  );
}
