import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lab extends StatelessWidget {
  const Lab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://ts1.cn.mm.bing.net/th/id/R-C.5c44100a847675c7caeb4bcfd086ed3c?rik=q8YAeYeQRVDaXw&riu=http%3a%2f%2fclipart-library.com%2fimages%2fziX5nzB5T.jpg&ehk=hMii7BBpsvKOlXS3SS3l%2bv1o2QkkfY5IpLY8Vuh5jPA%3d&risl=&pid=ImgRaw&r=0"))),
          child: Column(children: [
            const Center(
              child: Text(
                "\n\n\nLuLab Purpose:\n",
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
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Lu Lab In Silicon Valley',
                  style: TextStyle(
                    fontSize: 150,
                    fontFamily: "han",
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.grey.shade300,
                  ),
                ),
                // Solid text as fill.
                const Text(
                  'Lu Lab In Silicon Valley',
                  style: TextStyle(
                      fontSize: 150, color: Colors.green, fontFamily: "han"),
                ),
              ],
            ),
            //const Text("\n\n\n"),
            const Center(
              child: Text(
                "\nIn Lu Lab",
                style: TextStyle(
                    fontSize: 60.0, fontFamily: 'tnr', color: Colors.black),
              ),
            ),
            const Center(
              child: Text(
                "\n\n Have fun playing games\n",
                style: TextStyle(
                  fontSize: 60.0,
                  fontFamily: 'han',
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
                  fontFamily: 'han',
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
          ]),
        ),
//         const Center(
//           child: Text(
//             "\n\n\nLu Xiangqian Innovation and Entrepreneurship Lab Purpose:\n",
//             style: TextStyle(
//               fontSize: 20.0,
//               fontFamily: 'MyFontStyle',
//             ),
//           ),
//         ),
//         const Center(
//           child: Text(
//             "聚天下英才名师组团玩\n",
//             style: TextStyle(
//               fontSize: 70.0,
//               fontFamily: 'han',
//             ),
//           ),
//         ),
//         // const Center(
//         //   child: Text(
//         //     "Professor Lu's Internet Innovation & Entrepreneurship Lab\n",
//         //     style: TextStyle(
//         //         fontSize: 30.0, fontFamily: "col", color: Colors.green),
//         //   ),
//         // ),
//         Stack(
//           children: <Widget>[
//             // Stroked text as border.
//             Text(
//               'Lu Lab In Silicon Valley',
//               style: TextStyle(
//                 fontSize: 150,
//                 fontFamily: "han",
//                 foreground: Paint()
//                   ..style = PaintingStyle.stroke
//                   ..strokeWidth = 6
//                   ..color = Colors.grey.shade300,
//               ),
//             ),
//             // Solid text as fill.
//             const Text(
//               'Lu Lab In Silicon Valley',
//               style: TextStyle(
//                   fontSize: 150, color: Colors.green, fontFamily: "han"),
//             ),
//           ],
//         ),
//         //const Text("\n\n\n"),
//         const Center(
//           child: Text(
//             "\nIn Lu lab",
//             style: TextStyle(
//                 fontSize: 40.0, fontFamily: 'han', color: Colors.green),
//           ),
//         ),
//         const Center(
//           child: Text(
//             "\n\n Have fun playing games\n",
//             style: TextStyle(
//               fontSize: 60.0,
//               fontFamily: 'han',
//             ),
//           ),
//         ),
//         const Divider(
//           height: 10.0,
//           color: Colors.green,
//           thickness: 5.0,
//           indent: 650.0,
//           endIndent: 650.0,
//         ),
//         Image.network(
//             "https://th.bing.com/th/id/R.392698d6cbfe4a6627fbeee9a3724537?rik=d0fuTgthfVtEHQ&pid=ImgRaw&r=0",
// ),
//         const Center(
//           child: Text(
//             "\n Have fun with codeing\n",
//             style: TextStyle(
//               fontSize: 60.0,
//               fontFamily: 'han',
//             ),
//           ),
//         ),
//         const Divider(
//           height: 10.0,
//           color: Colors.green,
//           thickness: 5.0,
//           indent: 650.0,
//           endIndent: 650.0,
//         ),
//         Image.asset("res/images/codeing.png"),

        // const Center(
        //   child: Text(
        //     '''\n\n\n\n
        //     Overview
        //     In 1994, convinced that the Internet would upend the world, Professor Lu Xiangqian created a laboratory to practice his educational methods:
        //     1. Unconventional self-actualization
        //     2.
        //     It is better to learn theory than to learn cases;
        //     It is better to learn cases than to make cases;
        //     It is better to make a case than to play a case;
        //     One person is not as good as several;
        //     A few people to play is not as good as gathering the world's elite masters to play in a group.
        //
        //     industry
        //     Vocational training and guidance
        //     scale
        //     2-10 employees
        //     There are 6 bits on the LinkedIn
        //     Including current employers who are members of Lu Xiangqian Laboratory, including part-time employees.
        //     headquarters
        //     California, Silicon Valley
        //     Founded
        //     1994,\n\n''',
        //     style: TextStyle(
        //         fontSize: 20.0,
        //         /*fontFamily* 'MyFontStyle',*/ color: Colors.black),
        //   ),
        // ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://openaicom.imgix.net/33edbc89-4974-4992-9870-c76435ca0e2f/bug-bounty-program.png?auto=compress%2Cformat&fit=min&fm=jpg&q=80&rect=0%2C0%2C2048%2C2048&w=800"))),
          child: Column(children: [
            Column(children: [
              const Text("\n\n\n"),
              Center(
                  child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'FAQ : What does students do in LuLab',
                    style: TextStyle(
                      fontSize: 70,
                      fontFamily: "ac",

                      ///fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  const Text(
                    'FAQ : What does students do in LuLab',
                    style: TextStyle(
                        fontSize: 70, color: Colors.white, fontFamily: "ac"),
                  ),
                ],
              )),
              const Center(
                  child: Text(
                "\n\nIn the Meta-verse CLub",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'han',
                ),
              )),
              const Center(
                  child: Text(
                '''
                  \n
At Meta-verse Club, we believe in leveraging children's natural 
tendency to play as a powerful tool for learning and growth. 
Our mission is to guide children from game players to game 
creators while giving them the necessary programming skills.
              ''',
                style: TextStyle(fontSize: 25.5, fontFamily: "tnr"),
              )),
            ]),
            const Column(children: [
              Center(
                  child: Text(
                "\n\nIn the Digital Technology Club",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'han',
                ),
              )),
              Center(
                  child: Text(
                '''
                  \n
We've been taking our students on the hottest projects. Recently
, We made an AI app. 
Because innovation comes in waves, after 94, the opportunity for
innovation is basically to build a website, such as Alibaba,
Baidu, Google, etc. After the emergence of smart phones,
basically the opportunity is to build an app, such as 
wechat, Meituan, Kuaishou, etc. Recently the app opportunities
for artificial intelligence are getting better and better.\n\n
              ''',
                style: TextStyle(fontSize: 25.5, fontFamily: "tnr"),
              )),
            ]),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  launch(
                      "https://www.linkedin.com/company/proflu/?viewAsMember=true");
                },
                child: const Text(
                  "Learn more... this button will jump to our linkdin",
                  style: TextStyle(
                      fontSize: 18.0,
                      //fontFamily: 'MyFontStyle',
                      color: Colors.black),
                ),
              ),
            ),
            const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"),
          ]),
        )
      ],
    ));
  }
}
