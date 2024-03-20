import 'package:flutter/material.dart';

void customShowSnakBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(text)),
  );
}
