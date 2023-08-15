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
    apiKey: 'AIzaSyCwBaJ7z0cRz_gR3C6sdX4nj2iUc1yPOr4',
    appId: '1:874925626256:web:cb93bb4700d226c630d915',
    messagingSenderId: '874925626256',
    projectId: 'chat-2-e0d0c',
    authDomain: 'chat-2-e0d0c.firebaseapp.com',
    storageBucket: 'chat-2-e0d0c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAs65q37ho0R0VrGbSmg7xB5iu92pxkCEc',
    appId: '1:874925626256:android:81d785fdc9af1a2630d915',
    messagingSenderId: '874925626256',
    projectId: 'chat-2-e0d0c',
    storageBucket: 'chat-2-e0d0c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaThRKDzYuPR6KFe4_P_hJsj-0ppzRdyI',
    appId: '1:874925626256:ios:be91991736c4083030d915',
    messagingSenderId: '874925626256',
    projectId: 'chat-2-e0d0c',
    storageBucket: 'chat-2-e0d0c.appspot.com',
    iosClientId: '874925626256-eg9v8qfajo8gmack1tpocd26a4mvn873.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappUi',
  );
}