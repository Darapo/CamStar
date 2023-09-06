import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/edit_property_3/edit_property3_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProperty2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel1;
  // State field(s) for amenity_Pool widget.
  bool? amenityPoolValue1;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel2;
  // State field(s) for amenity_EVCharging widget.
  bool? amenityEVChargingValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel3;
  // State field(s) for amenity_ExtraOutlets widget.
  bool? amenityExtraOutletsValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel4;
  // State field(s) for amenity_AC widget.
  bool? amenityACValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel5;
  // State field(s) for amenity_Heating widget.
  bool? amenityHeatingValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel6;
  // State field(s) for amenity_Washer widget.
  bool? amenityWasherValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel7;
  // State field(s) for amenity_Dryer widget.
  bool? amenityDryerValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel8;
  // State field(s) for amenity_Pets widget.
  bool? amenityPetsValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel9;
  // State field(s) for amenity_Workout widget.
  bool? amenityWorkoutValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel10;
  // State field(s) for amenity_Pool widget.
  bool? amenityPoolValue2;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel11;
  // State field(s) for amenity_Pool widget.
  bool? amenityPoolValue3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    amenitityIndicatorModel1 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel2 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel3 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel4 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel5 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel6 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel7 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel8 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel9 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel10 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel11 =
        createModel(context, () => AmenitityIndicatorModel());
  }

  void dispose() {
    amenitityIndicatorModel1.dispose();
    amenitityIndicatorModel2.dispose();
    amenitityIndicatorModel3.dispose();
    amenitityIndicatorModel4.dispose();
    amenitityIndicatorModel5.dispose();
    amenitityIndicatorModel6.dispose();
    amenitityIndicatorModel7.dispose();
    amenitityIndicatorModel8.dispose();
    amenitityIndicatorModel9.dispose();
    amenitityIndicatorModel10.dispose();
    amenitityIndicatorModel11.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
