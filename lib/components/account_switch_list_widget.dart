import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'account_switch_list_model.dart';
export 'account_switch_list_model.dart';

class AccountSwitchListWidget extends StatefulWidget {
  const AccountSwitchListWidget({Key? key}) : super(key: key);

  @override
  _AccountSwitchListWidgetState createState() =>
      _AccountSwitchListWidgetState();
}

class _AccountSwitchListWidgetState extends State<AccountSwitchListWidget> {
  late AccountSwitchListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountSwitchListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: SwitchListTile.adaptive(
        value: _model.switchListTileValue ??= true,
        onChanged: (newValue) async {
          setState(() => _model.switchListTileValue = newValue!);
        },
        title: Text(
          'Push Notifications',
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: 'Readex Pro',
                lineHeight: 2.0,
              ),
        ),
        tileColor: FlutterFlowTheme.of(context).secondaryBackground,
        activeColor: FlutterFlowTheme.of(context).primary,
        activeTrackColor: FlutterFlowTheme.of(context).accent1,
        dense: false,
        controlAffinity: ListTileControlAffinity.trailing,
        contentPadding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
      ),
    );
  }
}
