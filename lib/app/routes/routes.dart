import 'package:flutter/material.dart';
import 'package:lembretes/app/routes/base_routes.dart';

abstract class Routes {
  static String initial = BaseRoutes.homePage.route;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    BaseRoutes searchRoute = BaseRoutes.homePage;

    for (final BaseRoutes route in BaseRoutes.values) {
      if (settings.name == route.route) {
        searchRoute = route;
      }
      continue;
    }

    return MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => searchRoute.child,
      settings: settings,
    );
  }
}
