import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'reward_history_model.dart';
export 'reward_history_model.dart';

class RewardHistoryWidget extends StatefulWidget {
  const RewardHistoryWidget({Key? key}) : super(key: key);

  @override
  _RewardHistoryWidgetState createState() => _RewardHistoryWidgetState();
}

class _RewardHistoryWidgetState extends State<RewardHistoryWidget> {
  late RewardHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RewardHistoryModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
              color: FlutterFlowTheme.of(context).cultured,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'ប្រវត្តិសំណើរ',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).cultured,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                  child: Text(
                    'This Month',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
                PagedListView<DocumentSnapshot<Object?>?, RewardHistoryRecord>(
                  pagingController: _model.setListViewController(
                    RewardHistoryRecord.collection
                        .where('phone', isEqualTo: FFAppState().phoneNumber),
                  ),
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.vertical,
                  builderDelegate:
                      PagedChildBuilderDelegate<RewardHistoryRecord>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    ),
                    // Customize what your widget looks like when it's loading another page.
                    newPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    ),
                    noItemsFoundIndicatorBuilder: (_) => Center(
                      child: Image.asset(
                        'assets/images/not-found.png',
                      ),
                    ),
                    itemBuilder: (context, _, listViewIndex) {
                      final listViewRewardHistoryRecord = _model
                          .listViewPagingController!.itemList![listViewIndex];
                      return Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 1.0),
                        child: Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 5.0, 16.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listViewRewardHistoryRecord.reward,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        listViewRewardHistoryRecord.phone,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      listViewRewardHistoryRecord.point
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                    Text(
                                      () {
                                        if (listViewRewardHistoryRecord
                                                .status ==
                                            'rejected') {
                                          return 'បដិសេដ';
                                        } else if (listViewRewardHistoryRecord
                                                .status ==
                                            'approved') {
                                          return 'អនុម័ត';
                                        } else if (listViewRewardHistoryRecord
                                                .status ==
                                            'padding') {
                                          return 'កំពុងត្រួតពិនិត្យ';
                                        } else {
                                          return 'កំពុងត្រួតពិនិត្យ';
                                        }
                                      }(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Urbanist',
                                            color: () {
                                              if (listViewRewardHistoryRecord
                                                      .status ==
                                                  'rejected') {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .error;
                                              } else if (listViewRewardHistoryRecord
                                                      .status ==
                                                  'approved') {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .success;
                                              } else {
                                                return Color(0xFF0072A2);
                                              }
                                            }(),
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
