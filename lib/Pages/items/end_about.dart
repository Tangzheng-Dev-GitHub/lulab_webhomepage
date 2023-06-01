import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget ea(BuildContext context) {
  return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          const Center(
            child: Divider(),
          ),
          Row(children: [
            Row(children: [
              const Text("        "),
              Column(children: [
                Image.asset("res/images/lulab_logo.jpeg" ''),
              ]),
            ]),
            Row(children: [
              //const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"),
              const Text(
                  "                                                                    "),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " APP",
                      style: TextStyle(
                        fontSize: 40.5,
                        fontFamily: 'han',
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "\nAPP docs(not developed)",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: const Text(
                        "APP code",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://github.com/proflulab/LuLab_frontend/");
                      },
                    ),
                    const Text("\n"),
                    const Text(
                      " Contact us",
                      style: TextStyle(
                        fontSize: 40.5,
                        fontFamily: 'han',
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "\nadmission@proflu.cn",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: const Text(
                        "San Francisco, CA 94539",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        //launch("https://github.com/proflulab/LuLab_frontend/");
                      },
                    )
                  ]),
              const Text("                                 "),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " \nFriendship link",
                      style: TextStyle(
                        fontSize: 40.5,
                        fontFamily: 'han',
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "\nMicrosoft Corporation",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://microsoft.com");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Apple Inc",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://apple.com");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Tsinghua tuna mirror station",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://mirrors.tuna.tsinghua.edu.cn/");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "OpenAI",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://www.openai.com");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "ScaleAI",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://scale.com/");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Nuro",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://www.nuro.ai/technology");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "DataRobot",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://www.datarobot.com/");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "People.AI",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://www.people.ai/");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Ubuntu Inc.",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://www.ubuntu.com/");
                      },
                    ),
                    //Ali Cloud mirror station
                    TextButton(
                      child: const Text(
                        "Aliyun mirror station",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://developer.aliyun.com/mirror");
                      },
                    ),
                  ]),
              const Text(
                  "                                                                        "),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "\n\nFollow wechat official accounts \nand video accounts to get \nthe latest information\n(Scan the QR code in the dialog )",
                      style: TextStyle(
                          fontSize: 30.5,
                          fontFamily: 'han',
                          color: Colors.black),
                    ),
                    TextButton(
                      child: const Text(
                        "\nSend me to the video accounts >>",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image.asset("res/images/lulabQR2.pic.jpg"),
                            ));
                          },
                        );
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Send me to the official accounts >>",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image.asset("res/images/lulabQR1.png"),
                            ));
                          },
                        );
                      },
                    ),
                  ])
            ])
          ]),
          // Row(children: [
          //   const Text("        "),
          //   Image.asset("res/images/lulab_logo.jpeg" ''),]),
          // Row(children: [
          //   //const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"),
          //   const Text("                                                  "),
          //   Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const Text(
          //           " APP",
          //           style: TextStyle(
          //             fontSize: 40.5,
          //             fontFamily: 'han',
          //           ),
          //         ),
          //         TextButton(
          //           child: const Text(
          //             "\nAPP docs",
          //             style: TextStyle(
          //               fontSize: 20.5,
          //             ),
          //           ),
          //           onPressed: () {},
          //         ),
          //         TextButton(
          //           child: const Text(
          //             "APP code",
          //             style: TextStyle(
          //               fontSize: 20.5,
          //             ),
          //           ),
          //           onPressed: () {
          //             launch("https://github.com/proflulab/LuLab_frontend/");
          //           },
          //         )
          //       ]),
          //   const Text("        "),
          //   Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const Text(
          //           " \nFriendship link",
          //           style: TextStyle(
          //             fontSize: 40.5,
          //             fontFamily: 'han',
          //           ),
          //         ),
          //         TextButton(
          //           child: const Text(
          //             "\nMicrosoft Corporation",
          //             style: TextStyle(
          //               fontSize: 20.5,
          //             ),
          //           ),
          //           onPressed: () {
          //             launch("https://microsoft.com");
          //           },
          //         ),
          //         TextButton(
          //           child: const Text(
          //             "Apple Inc",
          //             style: TextStyle(
          //               fontSize: 20.5,
          //             ),
          //           ),
          //           onPressed: () {
          //             launch("https://apple.com");
          //           },
          //         ),
          //         TextButton(
          //           child: const Text(
          //             "Our Linkdin",
          //             style: TextStyle(
          //               fontSize: 20.5,
          //             ),
          //           ),
          //           onPressed: () {
          //             launch(
          //                 "https://www.linkedin.com/company/proflu/?viewAsMember=true");
          //           },
          //         ),
          //         TextButton(
          //           child: const Text(
          //             "Github",
          //             style: TextStyle(
          //               fontSize: 20.5,
          //             ),
          //           ),
          //           onPressed: () {
          //             launch("https://www.github.com");
          //           },
          //         )
          //       ]),
          // ])
          Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                '\n聚天下英才名师组团玩\n',
                style: TextStyle(
                  fontSize: 70,
                  //color: Colors.white,
                  fontFamily: "han",
                  //fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.greenAccent,
                ),
              ),
              // Solid text as fill.
              const Text(
                '\n聚天下英才名师组团玩\n',
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.black,
                  fontFamily: "han",
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"),
        ],
      ));
}
