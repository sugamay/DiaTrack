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
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ValueListItem component.
  late ValueListItemModel valueListItemModel1;
  // Model for ValueListItem component.
  late ValueListItemModel valueListItemModel2;
  // Model for ChartCard component.
  late ChartCardModel chartCardModel;
  // Model for ArticleCard component.
  late ArticleCardModel articleCardModel1;
  // Model for ArticleCard component.
  late ArticleCardModel articleCardModel2;
  // Model for SnackTile component.
  late SnackTileModel snackTileModel1;
  // Model for SnackTile component.
  late SnackTileModel snackTileModel2;
  // Model for SnackTile component.
  late SnackTileModel snackTileModel3;
  // Model for SnackTile component.
  late SnackTileModel snackTileModel4;
  // Model for SnackTile component.
  late SnackTileModel snackTileModel5;
  // Model for SnackTile component.
  late SnackTileModel snackTileModel6;

  @override
  void initState(BuildContext context) {
    valueListItemModel1 = createModel(context, () => ValueListItemModel());
    valueListItemModel2 = createModel(context, () => ValueListItemModel());
    chartCardModel = createModel(context, () => ChartCardModel());
    articleCardModel1 = createModel(context, () => ArticleCardModel());
    articleCardModel2 = createModel(context, () => ArticleCardModel());
    snackTileModel1 = createModel(context, () => SnackTileModel());
    snackTileModel2 = createModel(context, () => SnackTileModel());
    snackTileModel3 = createModel(context, () => SnackTileModel());
    snackTileModel4 = createModel(context, () => SnackTileModel());
    snackTileModel5 = createModel(context, () => SnackTileModel());
    snackTileModel6 = createModel(context, () => SnackTileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    valueListItemModel1.dispose();
    valueListItemModel2.dispose();
    chartCardModel.dispose();
    articleCardModel1.dispose();
    articleCardModel2.dispose();
    snackTileModel1.dispose();
    snackTileModel2.dispose();
    snackTileModel3.dispose();
    snackTileModel4.dispose();
    snackTileModel5.dispose();
    snackTileModel6.dispose();
  }
}
