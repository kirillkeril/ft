import 'package:flutter/material.dart';

class MaxSizeButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;

  const MaxSizeButton(
      {super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
