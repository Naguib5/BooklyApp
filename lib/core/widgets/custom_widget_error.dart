import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomWidgetError extends StatelessWidget {
  final String msgError;
  const CustomWidgetError({super.key, required this.msgError});
  @override
  Widget build(BuildContext context) {
    return Text(
      msgError,
      style: Styles.textStyle18,
    );
  }
}
