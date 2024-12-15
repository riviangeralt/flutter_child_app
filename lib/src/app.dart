import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/src/page1.dart';
import 'package:test_app/helper/shared_pref_helper.dart';

class CustomAppWidget extends StatelessWidget {
  const CustomAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = SharedPreferences.getInstance();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Child App From Git"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Child App From Git with app_id:'),
              Text(SharedPreferencesUtils().getString("app_id") ?? "No app_id"),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const Screen1());
                },
                child: const Text("Go to Screen 1"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
