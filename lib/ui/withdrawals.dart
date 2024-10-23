import 'package:flutter/material.dart';

class Withdrawals extends StatelessWidget {
  const Withdrawals({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Withdrawals'),
      ),
      body:const SingleChildScrollView(
        child: Text(
            'Current Month'
        ),
      ),
    );
  }
}
