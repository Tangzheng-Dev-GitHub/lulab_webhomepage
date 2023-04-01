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
            "\n\n\nLu Xiangqian Innovation and Entrepreneurship Lab Purpose:\n",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'MyFontStyle',
            ),
          ),
        ),
        const Center(
          child: Text(
            "聚天下英才名师组团玩\n",
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
            "\n\n\nIn Lu Xiangqian's laboratory",
            style: TextStyle(
                fontSize: 40.0, fontFamily: 'MyFontStyle', color: Colors.green),
          ),
        ),
        const Center(
          child: Text(
            "\n\n Have fun playing games\n",
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
            "\n Have fun with codeing\n",
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
            "About Lu Xiangqian Laboratory",
            style: TextStyle(
                fontSize: 45.0, fontFamily: 'MyFontStyle', color: Colors.green),
          ),
        ),
        const Center(
          child: Text(
            '''\n\n\n\n
    Overview
    In 1994, convinced that the Internet would upend the world, Professor Lu Xiangqian created a laboratory to practice his educational methods:
    1. Unconventional self-actualization
    2.
    It is better to learn theory than to learn cases;
    It is better to learn cases than to make cases;
    It is better to make a case than to play a case;
    One person is not as good as several;
    A few people to play is not as good as gathering the world's elite masters to play in a group.

    industry
    Vocational training and guidance
    scale
    2-10 employees
    There are 6 bits on the LinkedIn
    Including current employers who are members of Lu Xiangqian Laboratory, including part-time employees.
    headquarters
    California, Silicon Valley
    Founded
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
              "Learn more...",
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
