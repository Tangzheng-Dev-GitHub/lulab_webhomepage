import 'package:flutter/material.dart';
Widget learn() {
  return Column(
    children: const [
      Center(
        child: Text(
          "\n 个人学习",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Text("\n"),
      Divider(
        height: 10.0,
        color: Colors.yellow,
        thickness: 5.0,
        indent: 650.0,
        endIndent: 650.0,
      ),
      Center(
        child: Text(
          "\n 企业学习",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Text("\n"),
      Divider(
        height: 10.0,
        color: Colors.yellow,
        thickness: 5.0,
        indent: 650.0,
        endIndent: 650.0,
      ),
    ],
  );
}
