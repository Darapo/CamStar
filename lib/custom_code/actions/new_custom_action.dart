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

Future newCustomAction(
  String? id,
  String? location,
  String? phone,
  int? point,
  String? reward,
  String? status,
  String? name,
  String? dateTime,
) async {
  // Add your function code here!
  FirebaseFirestore db = FirebaseFirestore.instance;
  final docData = {
    "id": id,
    "name": name,
    "location": location,
    "phone": phone,
    "point": point,
    "reward": reward,
    "status": status,
    "timeStamp": dateTime
  };

  db
      .collection("rewardHistory")
      .doc(id)
      .set(docData)
      .onError((e, _) => print("Error writing document: $e"));
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
