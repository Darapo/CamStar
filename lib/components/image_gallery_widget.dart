import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'image_gallery_model.dart';
export 'image_gallery_model.dart';

class ImageGalleryWidget extends StatefulWidget {
  const ImageGalleryWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String>? images;

  @override
  _ImageGalleryWidgetState createState() => _ImageGalleryWidgetState();
}

class _ImageGalleryWidgetState extends State<ImageGalleryWidget> {
  late ImageGalleryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageGalleryModel());
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
        final image1 = widget.images!.toList();
        return Container(
          width: double.infinity,
          height: 500.0,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: PageView.builder(
                  controller: _model.pageViewImgController ??=
                      PageController(initialPage: min(0, image1.length - 1)),
                  scrollDirection: Axis.horizontal,
                  itemCount: image1.length,
                  itemBuilder: (context, image1Index) {
                    final image1Item = image1[image1Index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        image1Item,
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                  child: smooth_page_indicator.SmoothPageIndicator(
                    controller: _model.pageViewImgController ??=
                        PageController(initialPage: min(0, image1.length - 1)),
                    count: image1.length,
                    axisDirection: Axis.horizontal,
                    onDotClicked: (i) async {
                      await _model.pageViewImgController!.animateToPage(
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
