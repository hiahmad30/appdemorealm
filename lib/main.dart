import 'package:appdemorealm/controller/database_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realm/realm.dart';

import 'managers/router_manager.dart';

const String _appId = 'application-0-ujbdp';
final AppConfiguration _appConfig = AppConfiguration(_appId);
final App app = App(_appConfig);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Realm Simple',
      initialRoute: '/first',
      onGenerateRoute: RouterManager.generateRoute,
      builder: (
        context,
        child,
      ) =>
          MultiProvider(
        providers: [
          ListenableProvider(create: (_) => DataBaseController()),
        ],
        child: child,
      ),
    );
  }
}
