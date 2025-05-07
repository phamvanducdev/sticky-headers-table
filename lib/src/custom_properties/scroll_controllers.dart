import 'package:flutter/widgets.dart';

class ScrollControllers {
  ScrollControllers({
    ScrollController? verticalTitleController,
    ScrollController? verticalTitle2Controller,
    ScrollController? verticalBodyController,
    ScrollController? horizontalBodyController,
    ScrollController? horizontalTitleController,
  })  : this.verticalTitleController = verticalTitleController ?? ScrollController(),
        this.verticalTitle2Controller = verticalTitle2Controller ?? ScrollController(),
        this.verticalBodyController = verticalBodyController ?? ScrollController(),
        this.horizontalBodyController = horizontalBodyController ?? ScrollController(),
        this.horizontalTitleController = horizontalTitleController ?? ScrollController();

  final ScrollController verticalTitleController;
  final ScrollController verticalTitle2Controller;
  final ScrollController verticalBodyController;

  final ScrollController horizontalBodyController;
  final ScrollController horizontalTitleController;

  void dispose() {
    verticalBodyController.dispose();
    verticalTitleController.dispose();
    verticalTitle2Controller.dispose();

    horizontalBodyController.dispose();
    horizontalTitleController.dispose();
  }
}
