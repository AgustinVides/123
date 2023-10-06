import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'crea_fiesta0_widget.dart' show CreaFiesta0Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreaFiesta0Model extends FlutterFlowModel<CreaFiesta0Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nombre widget.
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for Organiza widget.
  TextEditingController? organizaController;
  String? Function(BuildContext, String?)? organizaControllerValidator;
  // State field(s) for Direccion widget.
  TextEditingController? direccionController;
  String? Function(BuildContext, String?)? direccionControllerValidator;
  // State field(s) for Fecha widget.
  TextEditingController? fechaController;
  String? Function(BuildContext, String?)? fechaControllerValidator;
  // State field(s) for Hora widget.
  TextEditingController? horaController;
  String? Function(BuildContext, String?)? horaControllerValidator;
  // State field(s) for Puntos widget.
  TextEditingController? puntosController;
  String? Function(BuildContext, String?)? puntosControllerValidator;
  // State field(s) for Foto widget.
  TextEditingController? fotoController;
  String? Function(BuildContext, String?)? fotoControllerValidator;
  // State field(s) for CIUDAD widget.
  TextEditingController? ciudadController;
  String? Function(BuildContext, String?)? ciudadControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for Info widget.
  TextEditingController? infoController;
  String? Function(BuildContext, String?)? infoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreController?.dispose();
    organizaController?.dispose();
    direccionController?.dispose();
    fechaController?.dispose();
    horaController?.dispose();
    puntosController?.dispose();
    fotoController?.dispose();
    ciudadController?.dispose();
    infoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
