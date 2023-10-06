import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAsN37RJE5IFNWnt-tGBfydV5G51PX9_8E",
            authDomain: "ticketwave-1e381.firebaseapp.com",
            projectId: "ticketwave-1e381",
            storageBucket: "ticketwave-1e381.appspot.com",
            messagingSenderId: "326393290488",
            appId: "1:326393290488:web:5455156d1bd993b53b250d",
            measurementId: "G-SBE65EZRRZ"));
  } else {
    await Firebase.initializeApp();
  }
}
