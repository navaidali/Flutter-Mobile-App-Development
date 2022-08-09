import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFF54768),
                          width: 2,
                        ),
                        color: const Color(0xFF41436A)
                      ),
                      child: Center(
                        child: Text(
                          userInput.toString(),
                          style: const TextStyle(fontSize: 21, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: 350,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xFFF54768),
                            width: 2,
                          ),
                          color: const Color(0xFF41436A)
                      ),
                      child: Center(
                        child: Text(
                          answer.toString(),
                          style: const TextStyle(fontSize: 21, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Button(
                          title: "AC",
                          onPress: () {
                            userInput = '';
                            answer = '';
                            setState(() {

                            });
                          },
                        ),
                        Button(
                          title: "+/-",
                          onPress: () {
                            userInput += '+/-';
                            setState(() {

                            });
                          },
                        ),
                        Button(title: "%", onPress: () {
                          userInput = '%';
                          setState(() {

                          });
                        }),
                        Button(
                            title: "/",
                            myColor: Color(0xFF41436A),
                            onPress: () {
                              userInput += '/';
                              setState(() {

                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: "7",
                          onPress: () {
                            userInput += '7';
                            setState(() {

                            });
                          },
                        ),
                        Button(
                          title: "8",
                          onPress: () {
                            userInput += '8';
                            setState(() {

                            });
                          },
                        ),
                        Button(title: "9", onPress: () {
                          userInput += '9';
                          setState(() {

                          });
                        }),
                        Button(
                            title: "x",
                            myColor: const Color(0xFF41436A),
                            onPress: () {
                              userInput += '*';
                              setState(() {

                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: "4",
                          onPress: () {
                            userInput += '4';
                            setState(() {

                            });
                          },
                        ),
                        Button(
                          title: "5",
                          onPress: () {
                            userInput += '5';
                            setState(() {

                            });
                          },
                        ),
                        Button(title: "6", onPress: () {
                          userInput += '6';
                          setState(() {

                          });
                        }),
                        Button(
                            title: "-",
                            myColor: const Color(0xFF41436A),
                            onPress: () {
                              userInput += '-';
                              setState(() {

                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: "1",
                          onPress: () {
                            userInput += '1';
                            setState(() {

                            });
                          },
                        ),
                        Button(
                          title: "2",
                          onPress: () {
                            userInput += '2';
                            setState(() {

                            });
                          },
                        ),
                        Button(title: "3", onPress: () {
                          userInput += '3';
                          setState(() {

                          });
                        }),
                        Button(
                            title: "+",
                            myColor: const Color(0xFF41436A),
                            onPress: () {
                              userInput += '+';
                              setState(() {

                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: "0",
                          onPress: () {
                            userInput += '0';
                            setState(() {

                            });
                          },
                        ),
                        Button(
                          title: ".",
                          onPress: () {
                            userInput += '.';
                            setState(() {

                            });
                          },
                        ),
                        Button(title: "Del", onPress: () {
                          userInput=userInput.substring(0, userInput.length-1);
                          setState(() {

                          });
                        }),
                        Button(
                            title: "=",
                            myColor: const Color(0xFF41436A),
                            onPress: () {
                              equalPressed();
                              setState(() {

                              });
                              setState(() {

                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPressed() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel=ContextModel();

    double eval =expression.evaluate(EvaluationType.REAL, ContextModel());
    answer= "=" + eval.toString();
  }
}
