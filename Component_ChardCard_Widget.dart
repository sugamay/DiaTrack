// Component_ChardCard_Widget

import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'chart_card_model.dart';
export 'chart_card_model.dart';

class ChartCardWidget extends StatefulWidget {
  const ChartCardWidget({super.key});

  @override
  State<ChartCardWidget> createState() => _ChartCardWidgetState();
}

class _ChartCardWidgetState extends State<ChartCardWidget> {
  late ChartCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 250,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 250,
          child: Stack(
            alignment: AlignmentDirectional(0, 0),
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 150,
                child: FlutterFlowLineChart(
                  data: [
                    FFLineChartData(
                      xData: FFAppState().chartX,
                      yData: FFAppState().chartY,
                      settings: LineChartBarData(
                        color: FlutterFlowTheme.of(context).white,
                        barWidth: 4,
                        isCurved: true,
                        dotData: FlDotData(show: false),
                      ),
                    )
                  ],
                  chartStylingInfo: ChartStylingInfo(
                    backgroundColor: FlutterFlowTheme.of(context).primary,
                    showBorder: false,
                  ),
                  axisBounds: AxisBounds(),
                  xAxisLabelInfo: AxisLabelInfo(),
                  yAxisLabelInfo: AxisLabelInfo(),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.show_chart_rounded,
                        color: FlutterFlowTheme.of(context).white,
                        size: 24,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Average glucose',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context).white,
                                  letterSpacing: 0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 13),
                        child: Text(
                          'PAST 7 DAYS',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).white,
                                    letterSpacing: 0,
                                  ),
                        ),
                      ),
                      Text(
                        FFAppState().avgLevel.toString(),
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context).white,
                                  letterSpacing: 0,
                                ),
                      ),
                    ],
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
