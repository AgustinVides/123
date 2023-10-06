// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future compraExitosa() async {
  // updatea fiel of all the documents of a colection to true
// Assuming you have a collection named "TicketSeleccionado" in your Firestore database
  CollectionReference TicketSeleccionadoRef =
      FirebaseFirestore.instance.collection('TicketSeleccionado');

  // Updating the "EstaComprado" field of all documents to true
  await TicketSeleccionadoRef.get().then((querySnapshot) {
    querySnapshot.docs.forEach((doc) async {
      await TicketSeleccionadoRef.doc(doc.id).update({'EstaComprado': true});
    });
  });

  print('All documents updated successfully!');
}
