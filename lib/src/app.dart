import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppWidget extends StatelessWidget {
  const CustomAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Custom App Widget'),
            ElevatedButton(
              onPressed: () {
                print("asa");
              },
              child: Text("Click Me"),
            )
          ],
        ),
      ),
    );
  }
}
