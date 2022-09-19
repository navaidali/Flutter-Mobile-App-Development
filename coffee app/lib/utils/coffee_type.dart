import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  bool isSelected;
  CoffeeType({required this.coffeeType,
  required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        coffeeType,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: isSelected? Colors.orange: Colors.white),
      ),
    );
  }
}
