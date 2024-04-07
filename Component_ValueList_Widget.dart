// Component_ValueList_Widget

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'value_list_item_model.dart';
export 'value_list_item_model.dart';

class ValueListItemWidget extends StatefulWidget {
  const ValueListItemWidget({
    super.key,
    this.icon,
    this.label,
    this.value,
    this.color,
  });

  final Widget? icon;
  final String? label;
  final String? value;
  final Color? color;

  @override
  State<ValueListItemWidget> createState() => _ValueListItemWidgetState();
}

class _ValueListItemWidgetState extends State<ValueListItemWidget> {
  late ValueListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValueListItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 65,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            widget.icon!,
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  widget.label!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                    child: Text(
                      widget.value!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            color: FlutterFlowTheme.of(context).white,
                            letterSpacing: 0,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
