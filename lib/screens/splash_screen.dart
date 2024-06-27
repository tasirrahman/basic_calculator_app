import 'package:basic_calculator_app/controllers/theme.dart';
import 'package:basic_calculator_app/data/app_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.go("/homepage");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(useMaterial3: customTheme.material3),
      home: Scaffold(
        backgroundColor: customTheme.scaffoldColor,
        body: Center(
          child: FlutterLogo(
            size: 130,
          ),
        ),
      ),
    );
  }
}
