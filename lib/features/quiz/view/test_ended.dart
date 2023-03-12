import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class TestEnded extends ReactiveStatelessWidget {
  const TestEnded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [BackButton()],
      ),
      body: const Center(
        child: Text(
          'Test Complete',
          textScaleFactor: 4,
        ),
      ),
    );
  }
}
