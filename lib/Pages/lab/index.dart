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
                      "https://th.bing.com/th/id/OIP.DJZ6pGD-bZ2qkbArz_8xrgHaLH?pid=ImgDet&rs=1"))),
          child: Column(children: [
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
                "\nIn Lu lab",
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
            Column(children: const [
              Text("\n\n\n"),
              Center(
                child: Text(
                  "What does children do in LuLab",
                  style: TextStyle(
                      fontSize: 45.0,
                      fontFamily: 'MyFontStyle',
                      color: Colors.green),
                ),
              ),
              Center(
                  child: Text(
                "\n\nin the Junior class",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'han',
                ),
              )),
              Center(
                  child: Text(
                '''
                  \n
          First we let chindren play with with new games/stuff, then we let them code.
              ''',
                style: TextStyle(fontSize: 25.5, fontFamily: "col"),
              )),
            ]),
            Column(children: const [
              Center(
                  child: Text(
                "\n\nin the Industrial class",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'han',
                ),
              )),
              Center(
                  child: Text(
                '''
                  \n
          We let chindren code, then we let then do projects for LuLab.\n\n
              ''',
                style: TextStyle(fontSize: 25.5, fontFamily: "col"),
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
