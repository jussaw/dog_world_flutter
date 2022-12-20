import 'package:flutter/material.dart';

class FeedbackWidget extends StatelessWidget {
  const FeedbackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(elevation: 0),
          onPressed: () => {Navigator.of(context).pop()},
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: const Center(
        child: Text("Feedback Screen"),
      ),
    );
  }
}
