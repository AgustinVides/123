import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'crear_ticket0_widget.dart' show CrearTicket0Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearTicket0Model extends FlutterFlowModel<CrearTicket0Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nombre widget.
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for Info widget.
  TextEditingController? infoController;
  String? Function(BuildContext, String?)? infoControllerValidator;
  // State field(s) for Precio widget.
  TextEditingController? precioController;
  String? Function(BuildContext, String?)? precioControllerValidator;
  // State field(s) for Cantidad widget.
  TextEditingController? cantidadController;
  String? Function(BuildContext, String?)? cantidadControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreController?.dispose();
    infoController?.dispose();
    precioController?.dispose();
    cantidadController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
