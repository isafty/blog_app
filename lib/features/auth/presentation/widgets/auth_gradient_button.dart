import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AuthGradientButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.maxFinite, 50),
      ),
      child: Text(text),
    );
  }
}
