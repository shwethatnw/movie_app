// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyC_JBASHyWQbohZwfPrAleUCY6UK1kkxkM',
    appId: '1:99730516558:web:007b57a4e31690cc5ef11f',
    messagingSenderId: '99730516558',
    projectId: 'nativewit-chat-b2379',
    authDomain: 'nativewit-chat-b2379.firebaseapp.com',
    databaseURL: 'https://nativewit-chat-b2379-default-rtdb.firebaseio.com',
    storageBucket: 'nativewit-chat-b2379.appspot.com',
    measurementId: 'G-0WBCJB57ZW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfD60rT9a6DpZDoetQ95u1r2l1wTw7kds',
    appId: '1:99730516558:android:5ca76d5349dfa49e5ef11f',
    messagingSenderId: '99730516558',
    projectId: 'nativewit-chat-b2379',
    databaseURL: 'https://nativewit-chat-b2379-default-rtdb.firebaseio.com',
    storageBucket: 'nativewit-chat-b2379.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmJ8tOxTKaOf3qIWo_b2DRv8vaIDE5IYQ',
    appId: '1:99730516558:ios:e44a818282bbdb275ef11f',
    messagingSenderId: '99730516558',
    projectId: 'nativewit-chat-b2379',
    databaseURL: 'https://nativewit-chat-b2379-default-rtdb.firebaseio.com',
    storageBucket: 'nativewit-chat-b2379.appspot.com',
    iosBundleId: 'com.nativewit.template',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmJ8tOxTKaOf3qIWo_b2DRv8vaIDE5IYQ',
    appId: '1:99730516558:ios:e44a818282bbdb275ef11f',
    messagingSenderId: '99730516558',
    projectId: 'nativewit-chat-b2379',
    databaseURL: 'https://nativewit-chat-b2379-default-rtdb.firebaseio.com',
    storageBucket: 'nativewit-chat-b2379.appspot.com',
    iosBundleId: 'com.nativewit.template',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC_JBASHyWQbohZwfPrAleUCY6UK1kkxkM',
    appId: '1:99730516558:web:1ae5715632af430d5ef11f',
    messagingSenderId: '99730516558',
    projectId: 'nativewit-chat-b2379',
    authDomain: 'nativewit-chat-b2379.firebaseapp.com',
    databaseURL: 'https://nativewit-chat-b2379-default-rtdb.firebaseio.com',
    storageBucket: 'nativewit-chat-b2379.appspot.com',
    measurementId: 'G-C2GBDE6YCJ',
  );
}
