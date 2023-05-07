import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// Widget _buildSubjectCard(String title, String imagePath, String subtitle) {
//   return Card(
//     color: Colors.white,
//     elevation: 0,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(imagePath, fit: BoxFit.fitWidth),
//         const SizedBox(height: 10),
//         Text(title,
//             style: const TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.w600,
//             )),
//         Center(
//             child: Text(subtitle,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'MyFontStyle',
//                 ))),
//       ],
//     ),
//   );
// }
//
// Widget _buildLTItem(String label, String sublable, String a) {
//   return ListView(children: [
//     ListTile(
//       title: Text(
//         label,
//         style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
//       ),
//       subtitle: Text(sublable,
//           style: const TextStyle(
//             color: Colors.black,
//             fontSize: 25.0,
//             fontFamily: 'MyFontStyle',
//           )),
//       leading: Image.network(a),
//     )
//   ]);
// }

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _controller;
  late ChewieController videoChewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("res/images/xuanchuanpian.mp4");
    videoChewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9,
    );
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: Chewie(controller: videoChewieController),
        ));
  }
}

Widget subjects() {
  return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 176, 0)),
      child: Column(
        children: [
          const Center(
            child: Text(
              "\n Our Virtual Lab",
              style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "tnr",
                  color: Colors.white),
            ),
          ),
          const Text("\n\n"),
          // const Divider(
          //   height: 10.0,
          //   color: Color.fromARGB(255, 34, 37, 43),
          //   thickness: 5.0,
          //   indent: 630.0,
          //   endIndent: 630.0,
          // ),
          // GridView.count(
          //   crossAxisCount: 3,
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   children: [
          //     _buildSubjectCard('第二曲线', 'res/images/lulab_logo.jpeg',
          //         "\n通过8个思维模型系统完备学创新学科基\n础理论，帮助个人和企业突破极限 ，实\n现10倍速式的增长。"),
          //     _buildSubjectCard('第一性原理', 'res/images/lulab_logo.jpeg',
          //         "\n建立公理化思维方式，打破群体信念的\n束缚，掌握批判性思维能力，用第一性\n原理帮助个人和企业跨越鸿沟，实现第\n二曲线式的增长。"),
          //     _buildSubjectCard('理念世界', 'res/images/lulab_logo.jpeg',
          //         "\n通过临在当下，灵感流淌，击穿阈值，\n实现90度革命，帮你创造属于你的美\n好作品，实现人生的超越和救赎"),
          //   ],
          // ),
          // const Text("\n\n\n\n"),
          const Text("\n"),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 260,
              width: 660,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "\nBeyond the Ordinary",
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "tnr",
                        color: Colors.black),
                  ),
                ),
                const Text("\n"),
                const Text(
                  '''
          How can you get a feel for our extraordinary online Lab?                   
          Hear what some of our students and instructors have to say                
          about our school's strengths.                               
                    ''',
                  style: TextStyle(
                    fontSize: 20.995,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    '''Scroll down, click the logo to to watch the video >>\n''',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ]),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("res/images/lulab_logo.jpeg"),
                ),
              ),
              child: const Center(
                child: MyVideoPlayer(),
              ))

          // Center(
          //   child: Text(
          //     "\n Beyond the Ordinary",
          //     style: TextStyle(
          //         fontSize: 30.0,
          //         fontWeight: FontWeight.w600,
          //         color: Colors.white),
          //   ),
          // ),
          // Text("\n"),
          // Text(
          //   '''\nHow can you get a feel for our extraordinary online Lab? \nHear what some of our students and instructors have to say \nabout our school's strengths.\n''',
          //   style: TextStyle(fontSize: 20.0, color: Colors.white),
          // ),
          // Center(
          //   child: MyVideoPlayer(),
          // )
        ],
      ));
}
