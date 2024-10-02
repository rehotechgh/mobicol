import 'package:flutter/material.dart';
class MySilverApp extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverApp({super.key,
  required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return MySilverApp(child: child, title: title);
  }
}
