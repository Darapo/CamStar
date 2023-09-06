import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProperty3Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for pricePerNight widget.
  TextEditingController? pricePerNightController;
  String? Function(BuildContext, String?)? pricePerNightControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for taxRate widget.
  TextEditingController? taxRateController;
  String? Function(BuildContext, String?)? taxRateControllerValidator;
  // State field(s) for cleaningFee widget.
  TextEditingController? cleaningFeeController;
  String? Function(BuildContext, String?)? cleaningFeeControllerValidator;
  // State field(s) for notes widget.
  TextEditingController? notesController;
  String? Function(BuildContext, String?)? notesControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    pricePerNightController?.dispose();
    taxRateController?.dispose();
    cleaningFeeController?.dispose();
    notesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
