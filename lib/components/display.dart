import 'package:basic_calculator_app/controllers/theme.dart';
import 'package:flutter/material.dart';

class DisplayWidget extends StatefulWidget {
  final String result; // Make result final
  DisplayWidget({super.key, required this.result});

  @override
  State<DisplayWidget> createState() => _DisplayWidgetState();
}

class _DisplayWidgetState extends State<DisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 710,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: customTheme.displayColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            widget.result, // Use widget.result here
            style: TextStyle(
              fontSize: 48,
              color: customTheme.displayTextColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
