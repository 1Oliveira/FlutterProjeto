import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../app_module.dart';
import '../app_widget.dart';

void main() {
  runApp(RxRoot(
    child: ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  ));
}
