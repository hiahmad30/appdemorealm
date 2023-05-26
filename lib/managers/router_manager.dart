import 'package:flutter/material.dart';

import '../screens/first_screen.dart';
import '../screens/home_screen.dart';
import '../screens/sign_in_screen.dart';
import '../screens/sign_up_screen.dart';

class RouterManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/first':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case 'login':
        return MaterialPageRoute(builder: (_) => const LoginView());
      case 'register':
        return MaterialPageRoute(builder: (_) => const RegisterView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
