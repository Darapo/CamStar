import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reward_list_model.dart';
export 'reward_list_model.dart';

class RewardListWidget extends StatefulWidget {
  const RewardListWidget({Key? key}) : super(key: key);

  @override
  _RewardListWidgetState createState() => _RewardListWidgetState();
}

class _RewardListWidgetState extends State<RewardListWidget> {
  late RewardListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RewardListModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).error,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, -1.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: StreamBuilder<List<SpecailRewardRecord>>(
                    stream: querySpecailRewardRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<SpecailRewardRecord>
                          gridViewSpecailRewardRecordList = snapshot.data!;
                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 1.0,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: gridViewSpecailRewardRecordList.length,
                        itemBuilder: (context, gridViewIndex) {
                          final gridViewSpecailRewardRecord =
                              gridViewSpecailRewardRecordList[gridViewIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Container(
                              width: 128.0,
                              height: 213.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 15.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 0.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).cultured,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          gridViewSpecailRewardRecord.image,
                                          width: 315.0,
                                          height: 94.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        gridViewSpecailRewardRecord.point
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Urbanist',
                                              color: Color(0xFF053084),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    gridViewSpecailRewardRecord.product,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Urbanist',
                                          fontSize: 12.0,
                                        ),
                                  ),
                                  if (gridViewSpecailRewardRecord.point <=
                                      FFAppState().pointData)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (gridViewSpecailRewardRecord
                                                  .point <=
                                              FFAppState().pointData) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('សំណើរ'),
                                                  content: Text(
                                                      'ការដាក់សំណើររបស់អ្នកទទួលបានជោគជ័យ'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('យល់ព្រម'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            _model.updateUSer =
                                                await queryUserRecordOnce(
                                              queryBuilder: (userRecord) =>
                                                  userRecord.where('phone',
                                                      isEqualTo: FFAppState()
                                                          .phoneNumber),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);
                                            await actions.newCustomAction(
                                              getCurrentTimestamp
                                                  .millisecondsSinceEpoch
                                                  .toString(),
                                              _model.updateUSer?.location,
                                              _model.updateUSer?.phone,
                                              gridViewSpecailRewardRecord.point,
                                              gridViewSpecailRewardRecord
                                                  .product,
                                              'padding',
                                              _model.updateUSer?.name,
                                              '${dateTimeFormat('yyyy-MM-ddTHH:mm:ss', getCurrentTimestamp)}.000+07:00',
                                            );

                                            await _model.updateUSer!.reference
                                                .update({
                                              'point': FieldValue.increment(
                                                  -(gridViewSpecailRewardRecord
                                                      .point)),
                                            });
                                            FFAppState().update(() {
                                              FFAppState().pointData =
                                                  FFAppState().pointData +
                                                      valueOrDefault<int>(
                                                        functions.newCustomFunction(
                                                            gridViewSpecailRewardRecord
                                                                .point),
                                                        0,
                                                      );
                                            });
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('សំណើរ'),
                                                  content: Text(
                                                      'ពិន្ទុមិនគ្រប់គ្រាន់ មិនអាចដាក់សំណើរបានទេ'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('យល់ព្រម'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          }

                                          setState(() {});
                                        },
                                        text: 'ដាក់សំណើរ',
                                        options: FFButtonOptions(
                                          height: 25.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Urbanist',
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
