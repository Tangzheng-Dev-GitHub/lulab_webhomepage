import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget ea() {
  return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          const Center(child: Divider()),
          Row(children: [
            Row(children: [
              const Text("        "),
              Image.asset("res/images/lulab_logo.jpeg" ''),
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
                        "\nAPP docs",
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
                    )
                  ]),
              const Text("        "),
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
                        "Our Linkdin",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch(
                            "https://www.linkedin.com/company/proflu/?viewAsMember=true");
                      },
                    ),
                    TextButton(
                      child: const Text(
                        "Github",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {
                        launch("https://www.github.com");
                      },
                    )
                  ]),
              const Text(
                  "                                                                                                    "),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "\n\nFollow wechat official accounts \nand video accounts to get \nthe latest information",
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
                      onPressed: () {},
                    ),
                    TextButton(
                      child: const Text(
                        "Send me to the official accounts >>",
                        style: TextStyle(
                          fontSize: 20.5,
                        ),
                      ),
                      onPressed: () {},
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
          const Center(
            child: Text(
              "\n聚天下英才名师组团玩\n",
              style: TextStyle(
                fontSize: 70.0,
                fontFamily: 'han',
              ),
            ),
          ),
          const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"),
        ],
      ));
}
