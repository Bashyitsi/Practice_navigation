import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Home'),
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ),
    );
  }
}
