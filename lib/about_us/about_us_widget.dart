import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_us_model.dart';
export 'about_us_model.dart';

class AboutUsWidget extends StatefulWidget {
  const AboutUsWidget({Key? key}) : super(key: key);

  @override
  _AboutUsWidgetState createState() => _AboutUsWidgetState();
}

class _AboutUsWidgetState extends State<AboutUsWidget> {
  late AboutUsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutUsModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).error,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
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
            'អំពីយើង',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Urbanist',
                  color: FlutterFlowTheme.of(context).cultured,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/images/1O8A6265.jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\nអំពី ក្រុមហ៊ុន គ្លូប៊លខេម ស្ដារ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Urbanist',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text:
                            '\n\nជាក្រុមហ៊ុននាំមុខមួយក្នុងប្រទេសកម្ពុជា ក្នុងកិច្ចការនាំចូល និង ចែកចាយនូវផលិតផល និង បរិក្ខារសំរាប់ផ្គត់ផ្គង់វិស័យសំណង់។ ប្រកបដោយទំនាក់ទំនងជិតសិទ្ធ ក៏ដូចជាទំហំដៃគូចែកចាយពាសពេញ ផ្ទៃប្រទេស ក្រុមហ៊ុនយើងខ្ញុំនឹងបន្តខិតខំសហការណ៏ជាមួយបណ្តាម្ចាស់ផលិតផលល្បីៗ ក្នុងពិភពលោក ក្នុងការនាំចូល និង ចែកចាយ ដើម្បីបំពេញតាមតំរូវការអតិថិជន និង ភាពរីកចំរើន ដ៏ គួរ អោយកត់សំគាល់ នៃវិស័យ សំណង់ ក្នុង ប្រទេសកម្ពុជា។\n\nរហូតមកដល់ថ្ងៃនេះ ជី ស៊ី អេស មានមោទនភាពដែលបានក្លាយខ្លួនទៅជាអ្នកចែកចាយផលិតផលដែលមានគុណភាពខ្ពស់ដូចជា:    ផលិតផលគ្រួសារម៉ាក “Camstar“, សន្លឹកម្នាងសិលា “Gyproc”, សន្លឹកស៊ីម៉ង់ត៏ការពារទឹក “Shera”, បរិក្ខារអគ្គិសនី “Schneider Electric”, ខ្សែអគ្គិសនី “Prysmian Draka” ថ្នាំលាបសន្លឹក “ស្តារផេន” និងព្រី-កុងតាក់ “Branbert”។  ជាងនេះទៅទៀត ជី ស៊ី អេស ក៏ជាសមាជិកនៃសម្ព័ន្ធក្រុមហ៊ុន ISI Group ដែលមានក្រុមហ៊ុនធំៗកំពូលជាច្រើនដូចជា ISI Steel, FUXIN Steel Building, URBANLAND, CHUNGKANG Steel Structure, SOUNDSKOOL, SMALLWORLD and BROWN Coffee.',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).dark600,
                        ),
                      ),
                      TextSpan(
                        text: '\n\nទស្សនៈ វិស័យ',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            '\n\nជាក្រុមហ៊ុននាំមុខគេក្នុងការផ្គត់ផ្គង់សម្ភារៈគេហដ្ឋាន  និងអគារដែលមានគុណភាពខ្ពស់ នៅក្នុងប្រទេសកម្ពុជា',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).dark600,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Urbanist',
                          fontSize: 15.0,
                        ),
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
