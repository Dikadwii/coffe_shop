import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Navigation {
  static toNamed({required String routeName, Object? arguments}) {
    navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  static replaceNamed({required String routeName, Object? arguments}) {
    navigatorKey.currentState
        ?.pushReplacementNamed(routeName, arguments: arguments);
  }

  static replaceUntilNamed({required String routeName, Object? arguments}) {
    navigatorKey.currentState?.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  static back() => navigatorKey.currentState?.pop();
}