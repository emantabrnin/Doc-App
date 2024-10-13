import 'package:docdoc/core/routing/AppRouter.dart';
import 'package:flutter/material.dart';

import 'core/DI/dependancy_injection.dart';
import 'doc_app.dart';

void main() {
  setupGetIt();
  runApp( DocApp(appRouter: AppRouter(),));
}


