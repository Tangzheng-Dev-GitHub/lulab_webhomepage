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
  final _menuWidth = 155.0;

  @override
  void initState() {
    _menuStr = [
      "recommend",
      "theory course",
      "celebrity interview",
      "wonderful meeting",
      "previous courses"
    ];
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
                              width: 1,
                              height: _menuHeight,
                              color: Colors.white,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  str,
                                  style: const TextStyle(fontFamily: "tnr"),
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
              child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://openaicom.imgix.net/1c6a4da0-6336-42c1-82a2-922325092e0f/running-at-the-edge-of-space.jpeg?auto=compress%2Cformat&fit=min&fm=jpg&q=80&rect=0%2C0%2C1024%2C1024&w=3200"),
            )),
            child: SingleChildScrollView(
                child: Column(children: [
              card[_selectedIdx],
              const Text(
                "\n\nWant to watch more classes？",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'tnr',
                ),
              ),
              const Text(
                "\nDownload the Lu Lab APP\n\n\n\n",
                style: TextStyle(
                    fontFamily: 'han', color: Colors.white, fontSize: 50.0),
              ),
            ])),
          ))
        ],
      ),
    );
  }
}
