import 'dart:async';

import 'package:flutter/material.dart';

import 'extra/config/configuration.dart';
import 'features/core/presentation/app_widget.dart';

void main() => Main();

class Main extends Env {
  @override
  FutureOr<StatelessWidget> onCreate() {
    ErrorWidget.builder = (details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
      return const ColoredBox(color: Colors.transparent);
    };

    return AppWidget();
  }
}
