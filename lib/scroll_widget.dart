import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Top"),
            TextFormField(),
            const SizedBox(height: 1000),
            const Text("Bottom"),
          ],
        ),
      ),
    );
  }
}
