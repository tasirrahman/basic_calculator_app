import 'package:basic_calculator_app/components/display.dart';
import 'package:basic_calculator_app/controllers/calculator.dart';
import 'package:basic_calculator_app/controllers/size.dart';
import 'package:basic_calculator_app/controllers/theme.dart';
import 'package:basic_calculator_app/data/app_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textCtrl1 = TextEditingController();
  TextEditingController textCtrl2 = TextEditingController();
  double input1 = 0;
  double input2 = 0;
  late CalculatorClass calculator;

  @override
  void initState() {
    super.initState();
    calculator = CalculatorClass(x: input1, y: input2);
  }

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(useMaterial3: customTheme.material3),
      home: Scaffold(
        backgroundColor: customTheme.scaffoldColor,
        body: Padding(
          padding: EdgeInsets.all(size.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              DisplayWidget(
                result: result.toString(),
              ),
              SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) {
                  double width = constraints.maxWidth;
                  double fieldWidth = width > 600 ? 350 : width * 0.8;

                  if (width > 600) {
                    // Large display: show inputs in a Row
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: fieldWidth,
                          child: TextField(
                            controller: textCtrl1,
                            decoration: InputDecoration(
                              labelText: 'Input 1',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                input1 = double.tryParse(value) ?? 0;
                                calculator =
                                    CalculatorClass(x: input1, y: input2);
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: fieldWidth,
                          child: TextField(
                            controller: textCtrl2,
                            decoration: InputDecoration(
                              labelText: 'Input 2',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                input2 = double.tryParse(value) ?? 0;
                                calculator =
                                    CalculatorClass(x: input1, y: input2);
                              });
                            },
                          ),
                        ),
                      ],
                    );
                  } else {
                    // Small display: show inputs in a Column
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TextField(
                            controller: textCtrl1,
                            decoration: InputDecoration(
                              labelText: 'Input 1',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                input1 = double.tryParse(value) ?? 0;
                                calculator =
                                    CalculatorClass(x: input1, y: input2);
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TextField(
                            controller: textCtrl2,
                            decoration: InputDecoration(
                              labelText: 'Input 2',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                input2 = double.tryParse(value) ?? 0;
                                calculator =
                                    CalculatorClass(x: input1, y: input2);
                              });
                            },
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
              SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        result = calculator.add();
                      });
                    },
                    icon: Icon(Icons.add),
                    label: Text("Sum"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        result = calculator.subtract();
                      });
                    },
                    icon: Icon(Icons.remove),
                    label: Text("Minus"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        result = calculator.divide();
                      });
                    },
                    icon: Icon(Icons.horizontal_split),
                    label: Text("Divide"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        result = calculator.multiply();
                      });
                    },
                    icon: Icon(Icons.clear),
                    label: Text("Multiply"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        result = calculator.modulus();
                      });
                    },
                    icon: Icon(Icons.percent),
                    label: Text("Percent"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        result = 0;
                        input1 = 0;
                        input2 = 0;
                        textCtrl1.clear();
                        textCtrl2.clear();
                      });
                    },
                    icon: Icon(Icons.clear_all),
                    label: Text("Clear"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(child: Text(inc))
            ],
          ),
        ),
      ),
    );
  }
}
