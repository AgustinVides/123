import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cambiar_contra_widget.dart' show CambiarContraWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambiarContraModel extends FlutterFlowModel<CambiarContraWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Correo widget.
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    correoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
