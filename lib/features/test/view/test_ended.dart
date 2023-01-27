import 'package:flutter/material.dart';

class TestEnded extends StatelessWidget {
  const TestEnded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Test Complete',
          textScaleFactor: 4,
        ),
      ),
    );
  }
}
