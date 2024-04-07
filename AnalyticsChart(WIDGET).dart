// Analytics Chart WIDGET

import '/components/chart_chip_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'chart_full_model.dart';
export 'chart_full_model.dart';

class ChartFullWidget extends StatefulWidget {
  const ChartFullWidget({super.key});

  @override
  State<ChartFullWidget> createState() => _ChartFullWidgetState();
}

class _ChartFullWidgetState extends State<ChartFullWidget>
    with TickerProviderStateMixin {
  late ChartFullModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 800.ms,
          begin: Offset(0, 0),
          end: Offset(500, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartFullModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'HealthEvo',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Manrope',
                          color: FlutterFlowTheme.of(context).white,
                          fontSize: 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 40,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 22,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        FFAppState().daysScale = 7;
                        FFAppState().avgLevel = 157;
                      });
                    },
                    child: wrapWithModel(
                      model: _model.chartChipModel1,
                      updateCallback: () => setState(() {}),
                      child: ChartChipWidget(
                        selected: FFAppState().daysScale == 7,
                        title: '7 days',
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        FFAppState().daysScale = 14;
                        FFAppState().chartY = List.generate(
                                random_data.randomInteger(11, 11),
                                (index) => random_data.randomInteger(49, 78))
                            .toList()
                            .cast<int>();
                        FFAppState().avgLevel = 151;
                      });
                    },
                    child: wrapWithModel(
                      model: _model.chartChipModel2,
                      updateCallback: () => setState(() {}),
                      child: ChartChipWidget(
                        selected: FFAppState().daysScale == 14,
                        title: '14 days',
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        FFAppState().daysScale = 30;
                        FFAppState().chartY = List.generate(
                                random_data.randomInteger(11, 11),
                                (index) => random_data.randomInteger(59, 68))
                            .toList()
                            .cast<int>();
                        FFAppState().avgLevel = 142;
                      });
                    },
                    child: wrapWithModel(
                      model: _model.chartChipModel3,
                      updateCallback: () => setState(() {}),
                      child: ChartChipWidget(
                        selected: FFAppState().daysScale == 30,
                        title: '30 days',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 1,
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
                          height: 400,
                          child: FlutterFlowLineChart(
                            data: [
                              FFLineChartData(
                                xData: FFAppState().chartX,
                                yData: FFAppState().chartY,
                                settings: LineChartBarData(
                                  color: FlutterFlowTheme.of(context).white,
                                  barWidth: 5,
                                  isCurved: true,
                                ),
                              )
                            ],
                            chartStylingInfo: ChartStylingInfo(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              showBorder: false,
                            ),
                            axisBounds: AxisBounds(),
                            xAxisLabelInfo: AxisLabelInfo(),
                            yAxisLabelInfo: AxisLabelInfo(),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1, 1),
                          child: Padding(
                            padding: EdgeInsets.all(30),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 13),
                                  child: Text(
                                    'PAST ${FFAppState().daysScale.toString()} DAYS',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: FlutterFlowTheme.of(context)
                                              .white,
                                          letterSpacing: 0,
                                        ),
                                  ),
                                ),
                                Text(
                                  FFAppState().avgLevel.toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .displayLarge
                                      .override(
                                        fontFamily: 'Manrope',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        letterSpacing: 0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1, 0),
                          child: Container(
                            width: 500,
                            height: 488,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                        ),
                      ],
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
