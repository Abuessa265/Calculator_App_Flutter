import 'package:flutter/material.dart';

InputDecoration AppInputStyle(labelText, hintText) {
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(),
      labelText: labelText,
      hintText: hintText);
}

TextStyle HeadTextStyle() {
  return TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    color: Colors.green,
  );
}

TextStyle ButtonTextStyle() {
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))));
}
