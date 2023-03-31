import 'package:chewie/chewie.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../home.dart';

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({
    super.key,
  });

  @override
  _ThirdRouteState createState() => _ThirdRouteState();
}

late VideoPlayerController _controller1;
late ChewieController chewieController;

class _ThirdRouteState extends State<ThirdRoute> {
  @override
  void initState() {
    super.initState();

    _controller1 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    chewieController = ChewieController(
      videoPlayerController: _controller1,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller1.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String longText =
        '简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'MyFontStyle'),
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Chewie(
                      controller: chewieController,
                    ),
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent, // 背景颜色设置为透明
                    shadowColor: Colors.transparent,
                    leading: GestureDetector(
                      child: IconButton(
                          icon: const Icon(Icons.navigate_before_outlined,
                              size: 27.0),
                          onPressed: () {
                            runApp(HomePage());
                          }),
                      onTap: () => Navigator.pop(context),
                    ), //左侧按钮
                    iconTheme: const IconThemeData(
                        color: Colors.black, size: 40, opacity: 1),
                  ),
                ],
              ),
              const PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: Material(
                  color: Color(0XFFF7F7F7),
                  child: TabBar(
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.only(bottom: 5),
                    labelColor: Colors.green,
                    indicatorColor: Colors.green,
                    labelStyle: TextStyle(
                      fontSize: 17.5,
                    ),
                    tabs: <Widget>[
                      Tab(
                        text: '简介',
                      ),
                      Tab(text: '评价'),
                      Tab(text: ''),
                    ],
                  ),
                ),
              ),
              const Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        leading: Text(
                          '课程名称课程名称课程名称',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Text(
                          '主讲人姓名',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        title: Text('      2022年8月25日上线',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 13.0)),
                      ),
                      Padding(
                        // 分别指定四个方向的补白
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        child: ExpandableText(
                          longText,
                          expandText: '详情',
                          collapseText: '收起',
                          maxLines: 2,
                          linkColor: Colors.blue,
                        ),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Text(
                          '目录',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 17.5,
                          ),
                        ),
                      ),
                      Padding(
                        // 分别指定四个方向的补白
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Stack(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 241, 241, 241),
                                ),
                              ), //边框
                              onPressed: () {},
                              child: const ListTile(
                                title: Text(
                                  '第一节  课程名称课程名称课程名称',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black),
                                ),
                                subtitle: Text('30分钟',
                                    style: TextStyle(fontSize: 12.0)),
                              ),
                            ),
                            Container(
                              //始终位于页面底部
                              padding: const EdgeInsets.only(
                                  left: 280.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 178, 220, 180),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                child: const Text(
                                  '试看',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        // 分别指定四个方向的补白
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 241, 241, 241),
                            ),
                          ),
                          onPressed: () {},
                          child: const ListTile(
                            title: Text(
                              '第二节  课程名称课程名称课程名称',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                            subtitle:
                                Text('30分钟', style: TextStyle(fontSize: 12.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 235, 239, 247),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThirdRoute()),
                            );
                          },
                          child: const ListTile(
                            title: Text(
                              '第三节  课程名称课程名称课程名称',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                            subtitle:
                                Text('30分钟', style: TextStyle(fontSize: 12.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 241, 241, 241),
                            ),
                          ),
                          onPressed: () {},
                          child: const ListTile(
                            title: Text(
                              '第四节  课程名称课程名称课程名称',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                            subtitle:
                                Text('30分钟', style: TextStyle(fontSize: 12.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //始终位于页面底部
                padding: const EdgeInsets.only(
                    left: 10.0, top: 5.0, bottom: 1.0, right: 10.0),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text('立即开通会员，观看全部课程',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
