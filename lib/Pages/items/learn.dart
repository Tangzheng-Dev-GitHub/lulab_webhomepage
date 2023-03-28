import 'package:flutter/material.dart';

Widget learn() {
  return Column(
    children: [
      const Center(
        child: Text(
          "\n 个人学习",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const Divider(
        height: 10.0,
        color: Colors.yellow,
        thickness: 5.0,
        indent: 650.0,
        endIndent: 650.0,
      ),
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(0),
        ),
        child: Image.asset("res/l1_1.png"),
      ),
      const Text("\n"),
      const Center(
        child: Text(
          "\n 企业学习",
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
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(0),
        ),
        child: Image.asset("res/l2_1.jpg"),
      ),
      const Text("\n\n"),
      Wrap(
        spacing: 8.0, // 项之间的水平间距
        runSpacing: 8.0, // 行之间的垂直间距
        children: List.generate(
          7,
          (index) => CircleAvatar(
            radius: 60.0,
            child: Image.asset("res/lulab_logo.jpeg"),
          ),
        ),
      ),
      const Text("\n"),
      Wrap(
        spacing: 8.0, // 项之间的水平间距
        runSpacing: 8.0, // 行之间的垂直间距
        children: List.generate(
          7,
          (index) => CircleAvatar(
            radius: 60.0,
            child: Image.asset("res/lulab_logo.jpeg"),
          ),
        ),
      ),
      const Text("\n"),
      Wrap(
        spacing: 8.0, // 项之间的水平间距
        runSpacing: 8.0, // 行之间的垂直间距
        children: List.generate(
          7,
          (index) => CircleAvatar(
            radius: 60.0,
            child: Image.asset("res/lulab_logo.jpeg"),
          ),
        ),
      ),
      const Text("\n"),
      Wrap(
        spacing: 8.0, // 项之间的水平间距
        runSpacing: 8.0, // 行之间的垂直间距
        children: List.generate(
          7,
          (index) => CircleAvatar(
            radius: 60.0,
            child: Image.asset("res/lulab_logo.jpeg"),
          ),
        ),
      ),
      const Text("\n\n"),
    ],
  );
}
