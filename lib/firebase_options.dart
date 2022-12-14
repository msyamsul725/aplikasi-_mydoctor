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
    apiKey: 'AIzaSyBvMXXk_AGHsyc4pzApSKiaTov6DTgZuvc',
    appId: '1:923988420574:web:4abbb4c35fd99a8f381f4f',
    messagingSenderId: '923988420574',
    projectId: 'dokterku-3693c',
    authDomain: 'dokterku-3693c.firebaseapp.com',
    storageBucket: 'dokterku-3693c.appspot.com',
    measurementId: 'G-Y8HG7WNKCW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuaWfhjSAEyM3uVKFuEtYvEoV9g63A6HI',
    appId: '1:923988420574:android:830ff2ff5dead615381f4f',
    messagingSenderId: '923988420574',
    projectId: 'dokterku-3693c',
    storageBucket: 'dokterku-3693c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChid1ZYA464g0MzRE28UAqxp0at5wOSjs',
    appId: '1:923988420574:ios:cac56f25e26f4936381f4f',
    messagingSenderId: '923988420574',
    projectId: 'dokterku-3693c',
    storageBucket: 'dokterku-3693c.appspot.com',
    iosClientId:
        '923988420574-t9s432mutb3t306ic7tdn49pntvvg7uu.apps.googleusercontent.com',
    iosBundleId: 'com.example.blankFireSetstate',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyChid1ZYA464g0MzRE28UAqxp0at5wOSjs',
    appId: '1:923988420574:ios:cac56f25e26f4936381f4f',
    messagingSenderId: '923988420574',
    projectId: 'dokterku-3693c',
    storageBucket: 'dokterku-3693c.appspot.com',
    iosClientId:
        '923988420574-t9s432mutb3t306ic7tdn49pntvvg7uu.apps.googleusercontent.com',
    iosBundleId: 'com.example.blankFireSetstate',
  );
}
