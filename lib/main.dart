// ignore_for_file: prefer_const_constructors

import 'package:basic_calculator_app/data/app_data.dart';
import 'package:basic_calculator_app/routers/page_router.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MaterialApp.router(
    routerConfig: router,
    title: appName,
  ));
}
