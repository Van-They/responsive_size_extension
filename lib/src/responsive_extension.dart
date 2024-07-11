import 'package:flutter/cupertino.dart';

/// Get the device screen height
final double physicalHeight =
    WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.height;

/// Get the device screen width
final double physicalWidth =
    WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.width;

/// Get the device pixel
final double devicePixelRatio =
    WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

/// Calculate the size of given value that can scale on screen using baseWidth
/// than convert it to screen pixel
double _calculateSize(double size, [int baseWidth = 350]) {
  final screenWidth = physicalWidth / devicePixelRatio;
  final screenHeight = physicalHeight / devicePixelRatio;
  final dimension = screenWidth < screenHeight ? screenWidth : screenHeight;
  final originalScale = dimension / baseWidth * size;
  return (size + (originalScale - size) * 0.5);
}

/// Get value from int and scale it base on screen size
extension ScaleSizeExtension on int {
  double get scale => _calculateSize(toDouble());
}

/// Get value from int and scale it base on screen size
extension ScaleSizeDoubleExtension on double {
  double get scale => _calculateSize(toDouble());
}
