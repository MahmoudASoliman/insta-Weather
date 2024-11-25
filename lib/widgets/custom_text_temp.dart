import 'package:flutter/material.dart';

class CustomTextTemp extends StatelessWidget {
  const CustomTextTemp({
    super.key,
    required this.tempC,
  });

  final String tempC;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: tempC,
            style: const TextStyle(
              fontSize: 70,
              color: Colors.white,
            ),
          ),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(2, -20),
              child: const Text(
                '°C',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
