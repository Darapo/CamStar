import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_model.dart';
export 'custom_model.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String>? images;

  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  late CustomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 500.0,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: PageView(
              controller: _model.pageViewController ??=
                  PageController(initialPage: 0),
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.images![_model.pageViewCurrentIndex],
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
              child: smooth_page_indicator.SmoothPageIndicator(
                controller: _model.pageViewController ??=
                    PageController(initialPage: 0),
                count: 1,
                axisDirection: Axis.horizontal,
                onDotClicked: (i) async {
                  await _model.pageViewController!.animateToPage(
                    i,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                effect: smooth_page_indicator.ExpandingDotsEffect(
                  expansionFactor: 3.0,
                  spacing: 8.0,
                  radius: 16.0,
                  dotWidth: 16.0,
                  dotHeight: 8.0,
                  dotColor: FlutterFlowTheme.of(context).accent1,
                  activeDotColor: FlutterFlowTheme.of(context).primary,
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
