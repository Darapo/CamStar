import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/bonus/bonus_widget.dart';
import '/congratulation_page/congratulation_page_widget.dart';
import '/event_page/event_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/reward_history/reward_history_widget.dart';
import '/reward_list/reward_list_widget.dart';
import '/wrong_q_r_page/wrong_q_r_page_widget.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageMAINModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in homePage_MAIN widget.
  UserRecord? getUser;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  var scanQr = '';
  // Stores action output result for [Firestore Query - Query a collection] action in FloatingActionButton widget.
  QrCodeRecord? isScan;
  // Stores action output result for [Firestore Query - Query a collection] action in FloatingActionButton widget.
  UserRecord? updatePoint;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
