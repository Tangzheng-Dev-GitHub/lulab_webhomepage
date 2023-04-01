import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lab extends StatelessWidget {
  const Lab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const Center(
          child: Text(
            "\n\n\n陆向谦创新创业实验室宗旨：\n",
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
              fontFamily: 'han',
            ),
          ),
        ),
        // const Center(
        //   child: Text(
        //     "Professor Lu's Internet Innovation & Entrepreneurship Lab\n",
        //     style: TextStyle(
        //         fontSize: 30.0, fontFamily: "col", color: Colors.green),
        //   ),
        // ),
        const Center(
          child: Text(
            "LuLab\n",
            style: TextStyle(
                fontSize: 30.0, fontFamily: "col", color: Colors.green),
          ),
        ),
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
          "https://th.bing.com/th/id/R.392698d6cbfe4a6627fbeee9a3724537?rik=d0fuTgthfVtEHQ&pid=ImgRaw&r=0",
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
        Image.asset("res/images/codeing.png"),
        const Text("\n\n\n"),
        const Center(
          child: Text(
            "关于陆向谦实验室",
            style: TextStyle(
                fontSize: 45.0, fontFamily: 'MyFontStyle', color: Colors.green),
          ),
        ),
        const Center(
          child: Text(
            '''\n\n\n\n
    概览
    1994年，坚信互联网会颠覆整个世界，陆向谦教授创建实验室来实践他的教育方法：
    1.非常规自我实现
    2.
    学理论不如学案例；
    学案例不如做案例；
    做案例不如玩案例；
    一人玩不如几人玩；
    几人玩不如聚天下英才名师组团玩。

    行业
    职业培训和指导
    规模
    2-10 位员工
    领英上有 6 位
    包括现任雇主为陆向谦实验室的会员，包括兼职员工。
    总部
    加利福尼亚，硅谷
    创立
    1994,\n\n''',
            style: TextStyle(
                fontSize: 30.0, fontFamily: 'MyFontStyle', color: Colors.black),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              launch(
                  "https://www.linkedin.com/company/proflu/?viewAsMember=true");
            },
            child: const Text(
              "了解更多...",
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'MyFontStyle',
                  color: Colors.black),
            ),
          ),
        ),
        const Text("\n\n\n"),
      ],
    ));
  }
}
