import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stack_course_card_model.dart';
export 'stack_course_card_model.dart';

class StackCourseCardWidget extends StatefulWidget {
  const StackCourseCardWidget({Key? key}) : super(key: key);

  @override
  _StackCourseCardWidgetState createState() => _StackCourseCardWidgetState();
}

class _StackCourseCardWidgetState extends State<StackCourseCardWidget> {
  late StackCourseCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StackCourseCardModel());
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
      width: 143.0,
      height: 57.0,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 0.0),
        child: Text(
          'TypeScript for beginners',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
