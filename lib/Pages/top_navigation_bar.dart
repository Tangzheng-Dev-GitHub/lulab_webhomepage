import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'picture_show.dart';
import '../Widgets/searchBox.dart';
import 'temp.dart';

class PageBar extends StatelessWidget {
  const PageBar({super.key});

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
                //设置AppBar背景颜色
                leading: Image.network(
                  "https://pic4.zhimg.com/v2-84274bc0fc5028dfc784d0719a6e8a65_xll.jpg",
                  fit: BoxFit.fill,
                ),
                actions: [
                  const SearchBar(),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow.shade600),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all(const Size(100, 30)),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      runApp(const TempPage_DeadPage());
                    },
                    child: const Text(
                      '登陆',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                centerTitle: true,
                elevation: 5.0,
                title: const TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(text: "首页",),
                      Tab(text: "在线学习",),
                      Tab(text: "企业服务",),
                      Tab(text: "下载APP",),
                      Tab(text: "关于",),
                    ],
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.yellow,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 3, color: Colors.yellow),
                    )),
              )),
          body: TabBarView(
            children: [
              Picture(),
              const Center(
                  child:
                      Text("404 \n 未开发！", style: TextStyle(fontSize: 100.0))),
              const Center(
                  child:
                      Text("404 \n 未开发！", style: TextStyle(fontSize: 100.0))),
              const Center(
                  child:
                      Text("404 \n 未开发！", style: TextStyle(fontSize: 100.0))),
              const Center(
                  child:
                      Text("404 \n 未开发！", style: TextStyle(fontSize: 100.0))),
            ],
          ),
        ),
      ),
    );
  }
}
