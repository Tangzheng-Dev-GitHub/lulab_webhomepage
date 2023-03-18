import 'package:flutter/material.dart';
  Widget peoples() {
    return Column(
      children: [
        const Center(
          child: Text(
              "\n 汇聚全球学者",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),
          ),
        ),
      const Text("\n"),
      const Divider(
          height: 10.0,
          color: Colors.yellow,
          thickness: 5.0,
          indent: 650.0,
          endIndent: 650.0,
        ),

        Image.asset('res/peoples.gif',
          fit: BoxFit.fill,
        ),
      ],
    );
  }
