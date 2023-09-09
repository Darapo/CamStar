import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'term_and_condition_model.dart';
export 'term_and_condition_model.dart';

class TermAndConditionWidget extends StatefulWidget {
  const TermAndConditionWidget({Key? key}) : super(key: key);

  @override
  _TermAndConditionWidgetState createState() => _TermAndConditionWidgetState();
}

class _TermAndConditionWidgetState extends State<TermAndConditionWidget> {
  late TermAndConditionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermAndConditionModel());
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
            'ល៌ក្ខខ៍ណ្ឌ',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ' លក្ខ ខណ្ឌ  ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Urbanist',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        TextSpan(
                          text:
                              '\nខេមស្ដារដេ ប្រមូលផ្កាយ គឺជាកម្មវិធីដែលបង្កើតឡើងដោយ ខេមស្ដារក្លឹប ក្នុងគោលបំណងសម្រាប់បង្កើននូវទំនុកចិត្ត និងការ ចែករំលែក នូវអត្ថប្រយោជន៍ មួយចំនួនដល់អតិថិជនតាមរយៈកម្មវិធីនេះ លោកអ្នកអាចចុះឈ្មោះជាសមាជិកខេមស្ដារក្លឹប ដើម្បីទទួល បានអត្ថ ប្រយោជន៍ពី ការប្រើប្រាស់ កម្មវិធី ស្រប ទៅតាម លក្ខខណ្ឌ ដូចដែល បានរៀបរាប់ ខាង ក្រោម។ \n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).dark600,
                          ),
                        ),
                        TextSpan(
                          text: '១. ផលិតផល ដែលចូលរួម ក្នុង កម្មវិធី\n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        TextSpan(
                          text:
                              '- ម្សៅបៀកជញ្ជាំង ស្ដារកូត ២៥ គីឡូក្រាម (StarCote 120 WF)\n- ម្សៅបៀកជញ្ជាំង ស្ដារប្រូ ២៥ គីឡូក្រាម (StarPro 120 WF)\n- ម្សៅបៀកជញ្ជាំង ឃ្វិកកូត ២0 គីឡូក្រាម (QuicKote 120 WF)\n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).dark600,
                          ),
                        ),
                        TextSpan(
                          text: '២. របៀបទទួលបាន ពិន្ទុ\n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        TextSpan(
                          text:
                              '២.១ ពិន្ទុទទួលបានពីការជាវ ផលិតផល\n   - អតិថិជនអាចធ្វើការជាវនូវផលិតផល ម្សៅបៀកជញ្ជាំង ម៉ាកខេមស្ដារសញ្ញាផ្កាយ១ តាមបណ្ដាលដេប៉ូចែកចាយណាមួយ ដោយ ស្វែករកនូវសន្លឹក ដែលមាន ភ្ជាប់ជាមួយលេខ QR កូត\n   - លោកអ្នកអាចធ្វើការប្រើប្រាស់កាំមេរ៉ាទូរស័ព្ទដៃរបស់លោកអ្នកដើម្បីធ្វើការស្កេន QR កូត សំរាប\'ការចុះឈ្មោះដើម្បីចូលរួម កម្មវិធី ឬចូលទៅកាន់ CamstarClub app ដើម្បីបំពេញឈ្មោះផ្ទាល់ខ្លួន និង លេខ ទូរស័ព្ទ  \n   - បន្ទាប់ពីការចុះឈ្មោះបានជោគជ័យលោកអ្នកអាចធ្វើការចុចទៅលើប៊ូតុង ស្កេន QR កូត ជាមួយនឹងសន្លឹក QR កូត ដែលរកឃើញក្នុងបាវ សំរាប់ធ្វើការស្កេនដើម្បីទទួលបានពិន្ទុ ដែលគិតតាមចំនួន ផ្កាយ \n២.២ ពិន្ទុទទួលបានពីការចូលរួមសកម្មភាពរបស់ក្រុមហ៊ុន ដូចជា សិក្ខាសាលា ឬ វគ្គបណ្តុះបណ្តាល ផ្សេងៗ\n២.៣ ពិន្ទុទទួលបានពីការណែនាំសមាជិកថ្មី ចូលរួមកម្មវិធីខេម ស្តារក្លឹប\n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).dark600,
                          ),
                        ),
                        TextSpan(
                          text: '៣. របៀបប្តូរ រង្វាន់\n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        TextSpan(
                          text:
                              '- សូមធ្វើការពិនិត្យទៅលើចំនួនពិន្ទុ(ផ្កាយ) ដែលមាននៅក្នុងគណនេយ្យរបស់ អ្នក\n- ធ្វើការជ្រើសរើសនូវ ប្រភេទរង្វាន់ទៅតាមចំនួនពិន្ទុដែលបានកំណត់ រួចធ្វើការស្នើប្តូរ រង្វាន់\n- ក្រុមការងារនឹងធ្វើការឆ្លើយតបភ្លាមៗ នៅពេលដែលពត៌មានសំណើរបស់អ្នកត្រឹមត្រូវតាមលក្ខខណ្ឌដែលបាន កំណត់\n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).dark600,
                          ),
                        ),
                        TextSpan(
                          text: '៤. លក្ខខណ្ឌ និងការកំណត់មួយ ចំនួន\n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        TextSpan(
                          text:
                              '- ចំនួនផ្កាយនឹងត្រូវដកចេញពីគណនេយ្យរបស់លោកអ្នក បន្ទាប់ពីការស្នើប្ដូររង្វាន់ត្រូវបានទទួលការអនុញ្ញាតពីខាងក្រុមការងាររបស់យើង ខ្ញុំ\n- សូមធ្វើការភ្ជាប់មកជាមួយ អត្តសញ្ញាណប័ណ្ណ និងលេខទូរស័ព្ទដែលបានធ្វើការចុះឈ្មោះក្នុងសមាជិក ខេមស្ដារក្លឹប ដើម្បីធ្វើការផ្ទៀងផ្ទាត់ក្នុងការប្ដូរ រង្វាន់\n- ក្រុមហ៊ុនយើងខ្ញុំ សូមរក្សាសិទ្ធិកំណត់រយៈពេល១សប្តាស៍ ដើម្បីដំណើរការប្តូររង្វាន់ដល់លោក អ្នក\n- ក្រុមហ៊ុនយើងខ្ញុំ សូមរក្សាសិទ្ធិក្នុងការកែប្រែលក្ខខណ្ឌផ្សេងៗ ក្នុងករណីចាំបាច់ដោយគ្មានការជូនដំណឹង ជាមុន\n',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).dark600,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
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
