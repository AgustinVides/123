import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/cambiar_contra/cambiar_contra_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for fullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Contra widget.
  TextEditingController? contraController;
  late bool contraVisibility;
  String? Function(BuildContext, String?)? contraControllerValidator;
  // State field(s) for ConfContra widget.
  TextEditingController? confContraController;
  late bool confContraVisibility;
  String? Function(BuildContext, String?)? confContraControllerValidator;
  // State field(s) for RRPP widget.
  TextEditingController? rrppController;
  String? Function(BuildContext, String?)? rrppControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contraVisibility = false;
    confContraVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    fullNameController?.dispose();
    emailController?.dispose();
    contraController?.dispose();
    confContraController?.dispose();
    rrppController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
