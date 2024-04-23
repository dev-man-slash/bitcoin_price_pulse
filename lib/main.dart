import 'dart:async';

import 'package:flutter/material.dart';

import 'application.dart';
import 'core/locator/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();

  return runApp(const Application());
}
