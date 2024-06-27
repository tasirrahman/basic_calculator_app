import 'package:basic_calculator_app/data/app_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appName,
      home: Scaffold(
        body: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
