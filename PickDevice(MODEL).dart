// Pick device (MODEL)

import '/components/device_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'choose_device_widget.dart' show ChooseDeviceWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChooseDeviceModel extends FlutterFlowModel<ChooseDeviceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DeviceCard component.
  late DeviceCardModel deviceCardModel1;
  // Model for DeviceCard component.
  late DeviceCardModel deviceCardModel2;
  // Model for DeviceCard component.
  late DeviceCardModel deviceCardModel3;
  // Model for DeviceCard component.
  late DeviceCardModel deviceCardModel4;

  @override
  void initState(BuildContext context) {
    deviceCardModel1 = createModel(context, () => DeviceCardModel());
    deviceCardModel2 = createModel(context, () => DeviceCardModel());
    deviceCardModel3 = createModel(context, () => DeviceCardModel());
    deviceCardModel4 = createModel(context, () => DeviceCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    deviceCardModel1.dispose();
    deviceCardModel2.dispose();
    deviceCardModel3.dispose();
    deviceCardModel4.dispose();
  }
}
