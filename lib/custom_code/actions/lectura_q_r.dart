// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> lecturaQR(String lectura) async {
  String result = "";
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("TicketSeleccionado")
        .where("CodigoQR", isEqualTo: lectura)
        .get();
    if (querySnapshot.docs.isNotEmpty) {
      for (DocumentSnapshot documentSnapshot in querySnapshot.docs) {
        await documentSnapshot.reference.update({"Borrado": true});
      }
      result = "Aceptado!";
    } else {
      result = "Denegado!";
    }
  } catch (e) {
    result = "Error updating document(s): $e";
  }
  return result;
}
