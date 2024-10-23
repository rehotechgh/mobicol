import 'package:flutter/material.dart';

class Currentmonth extends StatelessWidget {
  const Currentmonth({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Current Month'),
      ),
      body:const SingleChildScrollView(
        child: Text(
'text here'
        ),
      ),
    );
  }
}
