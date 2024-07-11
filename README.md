<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A Flutter package that will make your size responsive base on device orientation and scale text font size

## Features

- scale any value base on screen size

## Getting started

Add ```responsive_size_extention``` to your pubspec.yaml before using.

## Usage
to use plugin add ```responsive_size_extention``` as you dependacy.
```dart
Container(
    width: 10.scale,//this will scale the given value base on screen
    height: 10.scale,
    child: Text("Vanthey",style:TextStyle(fontSize:14.scale),
    )
)
```

## Additional information

A Flutter package that will make your size responsive base on device orientation and scale text font size.
for more information please check at https://github.com/Van-They/responsive_size_extension.git
