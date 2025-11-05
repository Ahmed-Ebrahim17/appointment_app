import 'package:flutter/material.dart';

void showSnakBar(BuildContext context, {required String text,required Color color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      content: Text(text),
    ),
  );
}
