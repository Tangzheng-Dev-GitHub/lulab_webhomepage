import 'package:flutter/material.dart';

Widget _buildLTItem(String label, String sublable, String a) {
  return ListView(children: [
    ListTile(
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: "col",
        ),
      ),
      subtitle: Text(sublable,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          )),
      leading: Image.asset(a),
    )
  ]);
}

Widget learn() {
  return Column(children: [
    Image.asset("res/images/laa.png", fit: BoxFit.fill),
    const Text("\n\n\n"),
    SizedBox(
        height: 180.0,
        width: 1000.0,
        child: GridView.count(
          crossAxisCount: 2,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            _buildLTItem(
                "Junior class",
                "Children will learn the basics of programming",
                "res/images/lulab_logo.jpeg"),
            _buildLTItem(
                'Industrial class',
                "Enhance students' professional skills and practical \nexperience in computer science and artificial intelligence.",
                "res/images/lulab_logo.jpeg"),
          ],
        )),
    SizedBox(
        height: 180.0,
        width: 1000.0,
        child: GridView.count(
          crossAxisCount: 2,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            _buildLTItem(
                "Marketing Department",
                "Promoting products or services, communicating with customers and other tasks",
                "res/images/lulab_logo.jpeg"),
            _buildLTItem(
              'Leadership club',
              "An organization or program that develops leadership and management skills",
              "res/images/lulab_logo.jpeg",
            ),
          ],
        )),
  ]);
}
