import 'package:flutter/material.dart';
import 'package:taskmanagement/widgets/constants.dart';

Widget customText(String text, double size)
{
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: kdark,
      fontWeight: FontWeight.bold,
    ),
  );
}