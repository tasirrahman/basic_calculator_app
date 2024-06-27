import 'package:basic_calculator_app/controllers/calculator.dart';
import 'package:basic_calculator_app/controllers/size.dart';
import 'package:basic_calculator_app/controllers/theme.dart';
import 'package:basic_calculator_app/data/app_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalculatorClass calculator = CalculatorClass(x: 10.0, y: 5.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(useMaterial3: customTheme.material3),
      home: Scaffold(
        backgroundColor: customTheme.scaffoldColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: customTheme.displayColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Demo",
                    style: TextStyle(
                        fontSize: size.title,
                        color: customTheme.displayTextColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
