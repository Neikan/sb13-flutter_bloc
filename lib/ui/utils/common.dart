// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

Brightness getStatusBarBrightness() =>
    Platform.isAndroid ? Brightness.dark : Brightness.light;
