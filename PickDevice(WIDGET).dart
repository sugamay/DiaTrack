// Pick device widget

import '/components/device_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'choose_device_model.dart';
export 'choose_device_model.dart';

class ChooseDeviceWidget extends StatefulWidget {
  const ChooseDeviceWidget({super.key});

  @override
  State<ChooseDeviceWidget> createState() => _ChooseDeviceWidgetState();
}

class _ChooseDeviceWidgetState extends State<ChooseDeviceWidget>
    with TickerProviderStateMixin {
  late ChooseDeviceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'deviceCardOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'deviceCardOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'deviceCardOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'deviceCardOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 600.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseDeviceModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-4.19, -0.13),
                child: ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Image.asset(
                      'assets/images/blurred-drop.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.contain,
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation']!),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'HealthEvo',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'choose your device',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation']!),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 120),
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.8,
                          ),
                          scrollDirection: Axis.vertical,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  FFAppState().selectedTile = 'dexcom';
                                });
                              },
                              child: wrapWithModel(
                                model: _model.deviceCardModel1,
                                updateCallback: () => setState(() {}),
                                child: DeviceCardWidget(
                                  title: 'Dexcom',
                                  subtitle: 'G6 CGM',
                                  image:
                                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/dexcom.png',
                                  selected:
                                      FFAppState().selectedTile == 'dexcom',
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'deviceCardOnPageLoadAnimation1']!),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  FFAppState().selectedTile = 'freestyle';
                                });
                              },
                              child: wrapWithModel(
                                model: _model.deviceCardModel2,
                                updateCallback: () => setState(() {}),
                                child: DeviceCardWidget(
                                  title: 'Freestyle',
                                  subtitle: 'Libra 2',
                                  image:
                                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/freestyle.png',
                                  selected:
                                      FFAppState().selectedTile == 'freestyle',
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'deviceCardOnPageLoadAnimation2']!),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  FFAppState().selectedTile = 'medtronic';
                                });
                              },
                              child: wrapWithModel(
                                model: _model.deviceCardModel3,
                                updateCallback: () => setState(() {}),
                                child: DeviceCardWidget(
                                  title: 'Medtronic',
                                  subtitle: 'Guardian Connect',
                                  image:
                                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/medtronic.png',
                                  selected:
                                      FFAppState().selectedTile == 'medtronic',
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'deviceCardOnPageLoadAnimation3']!),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  FFAppState().selectedTile = 'eversense';
                                });
                              },
                              child: wrapWithModel(
                                model: _model.deviceCardModel4,
                                updateCallback: () => setState(() {}),
                                child: DeviceCardWidget(
                                  title: 'Eversense',
                                  subtitle: 'E3 CGM',
                                  image:
                                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/eversense.png',
                                  selected:
                                      FFAppState().selectedTile == 'eversense',
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'deviceCardOnPageLoadAnimation4']!),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                  child: FFButtonWidget(
                    onPressed: (FFAppState().selectedTile == null ||
                            FFAppState().selectedTile == '')
                        ? null
                        : () async {
                            context.goNamed(
                              'PairDevice',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 400),
                                ),
                              },
                            );
                          },
                    text: 'Next',
                    options: FFButtonOptions(
                      width: 150,
                      height: 70,
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Manrope',
                                color: FlutterFlowTheme.of(context).white,
                                fontSize: 14,
                                letterSpacing: 0,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      disabledColor: FlutterFlowTheme.of(context).secondaryText,
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
