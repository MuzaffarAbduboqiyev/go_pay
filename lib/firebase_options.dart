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
    apiKey: 'AIzaSyA0Yq7As6vEvIosYbVn8LXKWmB_qRgzxqU',
    appId: '1:320561641352:web:2b52694660254919fbac3d',
    messagingSenderId: '320561641352',
    projectId: 'gopay-cd213',
    authDomain: 'gopay-cd213.firebaseapp.com',
    storageBucket: 'gopay-cd213.appspot.com',
    measurementId: 'G-C54099FFFL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKuia9fZPiY6SBh_98WEuQfkyQdgh-oCs',
    appId: '1:320561641352:android:97c8924bb4e0f660fbac3d',
    messagingSenderId: '320561641352',
    projectId: 'gopay-cd213',
    storageBucket: 'gopay-cd213.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgcdCn1enB0lGkYF8hdHuvkmUl0HW0R30',
    appId: '1:320561641352:ios:571b175f31bd0f63fbac3d',
    messagingSenderId: '320561641352',
    projectId: 'gopay-cd213',
    storageBucket: 'gopay-cd213.appspot.com',
    iosBundleId: 'uz.gopay.transfer.goPay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgcdCn1enB0lGkYF8hdHuvkmUl0HW0R30',
    appId: '1:320561641352:ios:b830bf5dc67bfe04fbac3d',
    messagingSenderId: '320561641352',
    projectId: 'gopay-cd213',
    storageBucket: 'gopay-cd213.appspot.com',
    iosBundleId: 'uz.gopay.transfer.goPay.RunnerTests',
  );
}