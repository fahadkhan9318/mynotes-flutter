// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAZB_pTX1ePBhR89EKe2T_Jo-klFIHcERQ',
    appId: '1:424972090824:web:4b02417d76aa2fd7f314fd',
    messagingSenderId: '424972090824',
    projectId: 'mynotes-flutter-proj-e6b67',
    authDomain: 'mynotes-flutter-proj-e6b67.firebaseapp.com',
    storageBucket: 'mynotes-flutter-proj-e6b67.appspot.com',
    measurementId: 'G-KM2VD9S0CG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqOoQ0rOALOErWYNWD3eRIIvPORbWruNU',
    appId: '1:424972090824:android:697b816484f85994f314fd',
    messagingSenderId: '424972090824',
    projectId: 'mynotes-flutter-proj-e6b67',
    storageBucket: 'mynotes-flutter-proj-e6b67.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAabv2dnVZEL881z7GLRSqXt4JsqsX9L9Q',
    appId: '1:424972090824:ios:59b31b886c6ede9ff314fd',
    messagingSenderId: '424972090824',
    projectId: 'mynotes-flutter-proj-e6b67',
    storageBucket: 'mynotes-flutter-proj-e6b67.appspot.com',
    iosClientId:
        '424972090824-60eluvrmdrhctsa4r1prei36houu561u.apps.googleusercontent.com',
    iosBundleId: 'com.makingStuff.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAabv2dnVZEL881z7GLRSqXt4JsqsX9L9Q',
    appId: '1:424972090824:ios:59b31b886c6ede9ff314fd',
    messagingSenderId: '424972090824',
    projectId: 'mynotes-flutter-proj-e6b67',
    storageBucket: 'mynotes-flutter-proj-e6b67.appspot.com',
    iosClientId:
        '424972090824-60eluvrmdrhctsa4r1prei36houu561u.apps.googleusercontent.com',
    iosBundleId: 'com.makingStuff.mynotes',
  );
}
