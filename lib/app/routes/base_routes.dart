import 'package:flutter/material.dart';
import '../pages/home_page/home_page.dart';

enum BaseRoutes {
  homePage('/', HomePage());

  const BaseRoutes(this.route, this.child);

  final String route;
  final Widget child;
}
