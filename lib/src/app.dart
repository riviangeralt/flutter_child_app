import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppWidget extends StatelessWidget {
  const CustomAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Custom App Widget'),
            ElevatedButton(
              onPressed: () {
                log("asa");
              },
              child: Text("Click Me"),
            )
          ],
        ),
      ),
    );
  }
}
