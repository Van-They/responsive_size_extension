import 'package:flutter/cupertino.dart';

final double physicalHeight = WidgetsBinding
    .instance.platformDispatcher.views.first.physicalSize.height;
final double physicalWidth =
    WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.width;
final double devicePixelRatio =
    WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

double _calculateSize(double size, [int baseWidth = 350]) {
  final screenWidth = physicalWidth / devicePixelRatio;
  final screenHeight = physicalHeight / devicePixelRatio;
  final dimension = screenWidth < screenHeight ? screenWidth : screenHeight;
  final originalScale = dimension / baseWidth * size;
  return (size + (originalScale - size) * 0.5);
}

extension ScaleSizeExtension on int {
  double get scale => _calculateSize(toDouble());
}

extension ScaleSizeDoubleExtension on double {
  double get scale => _calculateSize(toDouble());
}
