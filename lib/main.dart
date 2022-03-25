import 'package:flutter/material.dart';
import 'package:mvvm_skeleton/src/app/di.dart';

import 'src/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  runApp(MyApp());
}
