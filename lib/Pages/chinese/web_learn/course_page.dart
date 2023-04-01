import 'package:flutter/material.dart';

import 'vars.dart';

class SideListViewMenu extends StatefulWidget {
  const SideListViewMenu({super.key});

  @override
  _SideListViewMenuState createState() => _SideListViewMenuState();
}

class _SideListViewMenuState extends State<SideListViewMenu> {
  var _menuStr = [];
  int _selectedIdx = 0;
  final _menuHeight = 50.0;
  final _menuWidth = 100.0;

  @override
  void initState() {
    _menuStr = ["推荐", "理论课程", "大咖访谈", "精彩例会", "往期课程"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            width: _menuWidth,
            child: ListView.builder(
              itemCount: _menuStr.length,
              itemBuilder: (context, index) {
                String str = _menuStr[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIdx = index;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: _menuHeight,
                        color: (_selectedIdx == index)
                            ? Colors.white
                            : Colors.grey.shade100,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 5,
                              height: _menuHeight,
                              color: Colors.white,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  str,
                                  style: const TextStyle(
                                      fontFamily: 'MyFontStyle',
                                      fontSize: 18.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey.shade50,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
              card[_selectedIdx],
              const Text(
                "\n\n想看更多课程？",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontFamily: 'MyFontStyle',
                ),
              ),
              const Text(
                "\n下载陆向谦实验室超级APP\n\n\n\n",
                style: TextStyle(
                    fontFamily: 'han', color: Colors.red, fontSize: 50.0),
              ),
            ])),
          )
        ],
      ),
    );
  }
}
