// Home page for Glucose App shows analytics, blog and button to 'log snack'

import '/components/article_card_widget.dart';
import '/components/chart_card_widget.dart';
import '/components/healthy_snack_sheet_widget.dart';
import '/components/snack_tile_widget.dart';
import '/components/value_list_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
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
    'chartOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.3,
          end: 1,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'valueListItemOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'valueListItemOnPageLoadAnimation2': AnimationInfo(
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
    'chartCardOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 450.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 450.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 450.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
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
    'articleCardOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 75.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 75.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 75.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'articleCardOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 150.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
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
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'snackTileOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'snackTileOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 400.ms,
          begin: Offset(10, 0),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 200.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'snackTileOnPageLoadAnimation3': AnimationInfo(
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
    'snackTileOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
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
    'snackTileOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 500.ms),
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
    'snackTileOnPageLoadAnimation6': AnimationInfo(
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
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().welcomeCircleDiameter = 350;
      });
    });

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
    final gaugePieChartColorsList = [
      Color(0xFF1B998B),
      Colors.white,
      Color(0xFF00335A)
    ];
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          child: Column(
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
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Manrope',
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: 24,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: HealthySnackSheetWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Icon(
                            Icons.account_circle,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional(0, 0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 40,
                                  decoration: BoxDecoration(),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 40, 0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0,
                                            2,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(16),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(16),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 15, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 6, 0),
                                            child: Text(
                                              'LIVE',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 13,
                                                        letterSpacing: 0,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: 12,
                                            height: 12,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF85E183),
                                              shape: BoxShape.circle,
                                            ),
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
                      ),
                      Container(
                        width: 240,
                        height: 240,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(
                                0,
                                2,
                              ),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 300,
                        child: FlutterFlowPieChart(
                          data: FFPieChartData(
                            values: FFAppState().percentages,
                            colors: gaugePieChartColorsList,
                            radius: [4],
                            borderWidth: [0],
                            borderColor: [
                              FlutterFlowTheme.of(context).tertiary
                            ],
                          ),
                          donutHoleRadius: 100,
                          sectionLabelStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Manrope',
                                letterSpacing: 0,
                              ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['chartOnPageLoadAnimation']!),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                            child: Text(
                              'GLUCOSE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Text(
                            '94',
                            style: FlutterFlowTheme.of(context)
                                .displayLarge
                                .override(
                                  fontFamily: 'Manrope',
                                  fontSize: 64,
                                  letterSpacing: 0,
                                  lineHeight: 0.9,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              'mg/dL',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'March 31, 2024 - April 7, 2024',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            color: FlutterFlowTheme.of(context).accent2,
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation1']!),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                child: wrapWithModel(
                  model: _model.valueListItemModel1,
                  updateCallback: () => setState(() {}),
                  child: ValueListItemWidget(
                    icon: Icon(
                      Icons.compare_arrows,
                    ),
                    label: 'Standard deviation',
                    value: '67',
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                ).animateOnPageLoad(
                    animationsMap['valueListItemOnPageLoadAnimation1']!),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                child: wrapWithModel(
                  model: _model.valueListItemModel2,
                  updateCallback: () => setState(() {}),
                  child: ValueListItemWidget(
                    icon: FaIcon(
                      FontAwesomeIcons.percentage,
                      size: 20,
                    ),
                    label: 'GMI',
                    value: '7.1%',
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ).animateOnPageLoad(
                    animationsMap['valueListItemOnPageLoadAnimation2']!),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 30),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('ChartFull');
                  },
                  child: wrapWithModel(
                    model: _model.chartCardModel,
                    updateCallback: () => setState(() {}),
                    child: ChartCardWidget(),
                  ),
                ).animateOnPageLoad(
                    animationsMap['chartCardOnPageLoadAnimation']!),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'from the blog',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Manrope',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 24,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation2']!),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 280,
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              wrapWithModel(
                                model: _model.articleCardModel1,
                                updateCallback: () => setState(() {}),
                                child: ArticleCardWidget(
                                  title:
                                      '7 Mindfullness Tricks to Revolutionize Your Routine',
                                  readingTime: '3 min',
                                  image:
                                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/meditation.jpg',
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'articleCardOnPageLoadAnimation1']!),
                              wrapWithModel(
                                model: _model.articleCardModel2,
                                updateCallback: () => setState(() {}),
                                child: ArticleCardWidget(
                                  title:
                                      'Diabetic Diet Showdown: The 3 Foods You Need to Incorporate',
                                  readingTime: '7 min',
                                  image:
                                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/chef.jpg',
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'articleCardOnPageLoadAnimation2']!),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'log a snack',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Manrope',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 24,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation3']!),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('LogFood');
                        },
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 28,
                        ),
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 40),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 220,
                  decoration: BoxDecoration(),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      wrapWithModel(
                        model: _model.snackTileModel1,
                        updateCallback: () => setState(() {}),
                        child: SnackTileWidget(
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/apple.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['snackTileOnPageLoadAnimation1']!),
                      wrapWithModel(
                        model: _model.snackTileModel2,
                        updateCallback: () => setState(() {}),
                        child: SnackTileWidget(
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/peanut-butter.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['snackTileOnPageLoadAnimation2']!),
                      wrapWithModel(
                        model: _model.snackTileModel3,
                        updateCallback: () => setState(() {}),
                        child: SnackTileWidget(
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/yugurt.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['snackTileOnPageLoadAnimation3']!),
                      wrapWithModel(
                        model: _model.snackTileModel4,
                        updateCallback: () => setState(() {}),
                        child: SnackTileWidget(
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/pretzels.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['snackTileOnPageLoadAnimation4']!),
                      wrapWithModel(
                        model: _model.snackTileModel5,
                        updateCallback: () => setState(() {}),
                        child: SnackTileWidget(
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/avocado-toast.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['snackTileOnPageLoadAnimation5']!),
                      wrapWithModel(
                        model: _model.snackTileModel6,
                        updateCallback: () => setState(() {}),
                        child: SnackTileWidget(
                          image:
                              'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/glua/banana.jpg',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['snackTileOnPageLoadAnimation6']!),
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
