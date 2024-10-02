import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final String hintText;
  final bool onbscureText;
  MyTextfield({super.key,
  required this.controller,
  required this.hintText,
  required this.onbscureText});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: onbscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,

            ),

          ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)            )
        ),
      ),
    );
  }
}
