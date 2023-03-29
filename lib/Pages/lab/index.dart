import 'package:flutter/material.dart';

import 'lab_ps.dart';

class Lab extends StatelessWidget {
  const Lab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const Center(
          child: Text(
            "\n\n\n陆向谦实验室宗旨：\n",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'MyFontStyle',
            ),
          ),
        ),
        const Center(
          child: Text(
            "聚天下名师英才组团玩\n",
            style: TextStyle(
              fontSize: 70.0,
              fontFamily: 'MyFontStyle',
            ),
          ),
        ),
        labPicture(),
        const Text("\n\n\n"),
        const Center(
          child: Text(
            "\n\n\n在陆向谦实验室",
            style: TextStyle(
                fontSize: 40.0, fontFamily: 'MyFontStyle', color: Colors.green),
          ),
        ),
        const Center(
          child: Text(
            "\n\n 享受游戏的快乐\n",
            style: TextStyle(
              fontSize: 60.0,
              fontFamily: 'MyFontStyle',
            ),
          ),
        ),
        const Divider(
          height: 10.0,
          color: Colors.green,
          thickness: 5.0,
          indent: 650.0,
          endIndent: 650.0,
        ),
        Image.network(
          "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2020/11/roblox-2145501.jpg?itok=95_lHsFO",
        ),
        const Center(
          child: Text(
            "\n 享Codeing的趣味\n",
            style: TextStyle(
              fontSize: 60.0,
              fontFamily: 'MyFontStyle',
            ),
          ),
        ),
        const Divider(
          height: 10.0,
          color: Colors.green,
          thickness: 5.0,
          indent: 650.0,
          endIndent: 650.0,
        ),
        Image.asset("res/codeing.png")
      ],
    ));
  }
}
