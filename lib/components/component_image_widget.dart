import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_image_model.dart';
export 'component_image_model.dart';

class ComponentImageWidget extends StatefulWidget {
  const ComponentImageWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String>? images;

  @override
  _ComponentImageWidgetState createState() => _ComponentImageWidgetState();
}

class _ComponentImageWidgetState extends State<ComponentImageWidget> {
  late ComponentImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentImageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final imgView = widget.images!.toList();
        return Container(
          width: double.infinity,
          height: 250.0,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: PageView.builder(
                  controller: _model.pageViewController ??=
                      PageController(initialPage: min(0, imgView.length - 1)),
                  scrollDirection: Axis.horizontal,
                  itemCount: imgView.length,
                  itemBuilder: (context, imgViewIndex) {
                    final imgViewItem = imgView[imgViewIndex];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        widget.images![_model.pageViewCurrentIndex],
                        width: double.infinity,
                        height: 180.0,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                  child: smooth_page_indicator.SmoothPageIndicator(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: min(0, imgView.length - 1)),
                    count: imgView.length,
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
      },
    );
  }
}
