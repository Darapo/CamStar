import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyARAQuHR7QEPyf_PCOdAEG6jVbIYD1Ybc0",
            authDomain: "qrscanner-65b75.firebaseapp.com",
            projectId: "qrscanner-65b75",
            storageBucket: "qrscanner-65b75.appspot.com",
            messagingSenderId: "967992930084",
            appId: "1:967992930084:web:80e6ed8033f315fab20db1",
            measurementId: "G-EHKF6K4BVV"));
  } else {
    await Firebase.initializeApp();
  }
}
