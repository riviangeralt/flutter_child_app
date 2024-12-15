import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppWidget extends StatelessWidget {
  const CustomAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Custom App Widget'),
      ),
    );
  }
}
