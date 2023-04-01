import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chinese/about/about_lulab.dart';
import 'chinese/download_application/download_app.dart';
import 'chinese/items/application.dart';
import 'chinese/lab/index.dart';
import 'chinese/web_learn/course_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LuLab: 聚天下名师英才组团玩',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight * 1.25),
              child: AppBar(
                backgroundColor: Colors.white,
                leading: Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      "https://pic4.zhimg.com/v2-84274bc0fc5028dfc784d0719a6e8a65_xll.jpg",
                      fit: BoxFit.fill,
                    )),
                flexibleSpace: Image.network(
                    "https://p1.ssl.qhmsg.com/t01c3b81fccea47f580.jpg",
                    fit: BoxFit.cover),
                actions: [
                  Center(
                    child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => CupertinoAlertDialog(
                                    title: const Text(
                                      "请选择此页面的语言",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: "MyFontStyle",
                                          color: Colors.black),
                                    ),
                                    content: const Text(
                                        "\n请在以下两种语言中选择\n(若想取消此操作，点击任意位置以继续)"),
                                    actions: [
                                      CupertinoDialogAction(
                                        child: const Text(
                                          "  汉语(中国大陆)  ",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: "MyFontStyle",
                                              color: Colors.black),
                                        ),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const Dialog(
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "请耐心等待此功能的开发吧！（目前只支持中文页面，点击任意位置以继续）",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                      CupertinoDialogAction(
                                        child: const Text(
                                          "  English(USA)  ",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: "col",
                                              color: Colors.black),
                                        ),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const Dialog(
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "请耐心等待此功能的开发吧！（目前只支持中文页面，点击任意位置以继续）",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ));
                        },
                        child: const Text(
                          "我想调整此页面的语言      ",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "han",
                              color: Colors.black),
                        )),
                  ),
                ],
                centerTitle: true,
                elevation: 5.0,
                title: const TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "首页",
                      ),
                      Tab(
                        text: "在线学习",
                      ),
                      Tab(
                        text: "陆向谦实验室",
                      ),
                      Tab(
                        text: "下载APP",
                      ),
                      Tab(
                        text: "关于",
                      ),
                    ],
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontSize: 21.5,
                      fontFamily: 'MyFontStyle',
                    ),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.yellow,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 3, color: Colors.red),
                    )),
              )),
          body: TabBarView(
            children: [
              SingleChildScrollView(child: homePage()),
              const SideListViewMenu(),
              const Lab(),
              SingleChildScrollView(
                child: downloadApp(),
              ),
              SingleChildScrollView(child: aboutLulab())
            ],
          ),
        ),
      ),
    );
  }
}
