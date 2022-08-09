import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Button extends StatelessWidget {
  final String title;
  final Color myColor;
  final VoidCallback onPress;
   Button({Key? key, required this.title, this.myColor=const Color(0xFFF54768), required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: myColor,
            ),
            child: Center(
                child: Text(title,
                    style: const TextStyle(color: Colors.white, fontSize: 21),
                    textDirection: TextDirection.ltr)),
          ),
        ),
      ),
    );
  }
}
