import 'package:flutter/material.dart';
import 'package:lembretes/app/routes/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lembretes',
      initialRoute: Routes.initial,
      onGenerateRoute: Routes.onGenerateRoute,
      onGenerateInitialRoutes: (initialRoute) => <Route<dynamic>>[
        Routes.onGenerateRoute(RouteSettings(name: initialRoute)),
      ],
    );
  }
}
