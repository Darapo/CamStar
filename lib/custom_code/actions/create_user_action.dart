// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future createUserAction(String? location, String? name, String? password,
    String? phone, int? point, String? dateTime) async {
  // Add your function code here!
  FirebaseFirestore db1 = FirebaseFirestore.instance;
  final docData = {
    "event": "Camstar Event",
    "location": location,
    "phone": phone,
    "point": 0,
    "name": name,
    "password": password,
    "role": "user",
    "status": true,
    "timeStamp": dateTime
  };

  db1
      .collection("user")
      .doc(phone)
      .set(docData)
      .onError((e, _) => print("Error writing document: $e"));
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
