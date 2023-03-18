import 'package:flutter/material.dart';
Widget teacher() {
  return Column(
    children: const [
      Center(
        child: Text(
          "\n 创新教练体系",
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
