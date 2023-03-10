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
    apiKey: 'AIzaSyD8_yYV7QbNk36uSrqkU4uJRplW0gQnoqg',
    appId: '1:1099155624718:web:d23dd3ef9ba48e37ecbd5f',
    messagingSenderId: '1099155624718',
    projectId: 'kings-9b7d2',
    authDomain: 'kings-9b7d2.firebaseapp.com',
    storageBucket: 'kings-9b7d2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKjpERVeeE8IqLdqi7gWOiC24GbGgvryQ',
    appId: '1:1099155624718:android:09e8162028f5d577ecbd5f',
    messagingSenderId: '1099155624718',
    projectId: 'kings-9b7d2',
    storageBucket: 'kings-9b7d2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIIrxQpkGzafNQLqbKpXUJg-_r3KKCKYY',
    appId: '1:1099155624718:ios:dc5234131bd811e7ecbd5f',
    messagingSenderId: '1099155624718',
    projectId: 'kings-9b7d2',
    storageBucket: 'kings-9b7d2.appspot.com',
    iosClientId: '1099155624718-gd6o385gsfsvp4r8e4q4aglb6du1llnq.apps.googleusercontent.com',
    iosBundleId: 'com.example.housecontractors',
  );
}
