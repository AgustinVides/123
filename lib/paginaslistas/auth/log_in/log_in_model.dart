import '/auth/firebase_auth/auth_util.dart';
import '/componentes/cambiar_contra/cambiar_contra_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'log_in_widget.dart' show LogInWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogInModel extends FlutterFlowModel<LogInWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Contra widget.
  TextEditingController? contraController;
  late bool contraVisibility;
  String? Function(BuildContext, String?)? contraControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contraVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailController?.dispose();
    contraController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
