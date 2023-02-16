import 'package:flutter_simple_dependency_injection/injector.dart';

import '../services/ColorService.dart';



class ModuleContainer {
  static Future<Injector> initialize(Injector injector) async {
    injector.map<ColorService>((i) => ColorService(), isSingleton: true);
    return injector;
  }
}