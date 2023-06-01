import 'package:flutter/material.dart';

Widget _buildLTItem(String label, String sublable, String a) {
  return ListView(children: [
    ListTile(
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: "col",
        ),
      ),
      subtitle: Text(sublable,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            fontFamily: "tnr",
          )),
      leading: Image.asset(a),
    )
  ]);
}

Widget learn() {
  return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              "https://ts1.cn.mm.bing.net/th/id/R-C.3fe2d3868a4b8c4b4b8a49e42e588f3c?rik=ZXaClqXYSafoeA&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f12%2fAbstract-Green-HD-Wallpaper.jpg&ehk=iAJSZP7pXlTlw5WzbkwTQdq%2bc%2bP0jN4J54pXTs%2f%2bpHo%3d&risl=&pid=ImgRaw&r=0"),
        ),
      ),
      child: Column(children: [
        Image.asset("res/images/laa.png", fit: BoxFit.fill),
        const Text("\n\n\n\n\n\n\n"),
        SizedBox(
            height: 180.0,
            width: 1000.0,
            child: GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                _buildLTItem(
                    "Meta-verse CLub",
                    "Children will learn the basics of programming",
                    "res/images/lulab_logo.jpeg"),
                _buildLTItem(
                    'Digital Technology Club',
                    "Enhance students' professional skills and practical \nexperience in computer science and artificial intelligence.",
                    "res/images/lulab_logo.jpeg"),
              ],
            )),
        SizedBox(
            height: 180.0,
            width: 1000.0,
            child: GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                _buildLTItem(
                    "Marketing Department",
                    "Promoting products or services, communicating with customers and other tasks",
                    "res/images/lulab_logo.jpeg"),
                _buildLTItem(
                  'Leadership club',
                  "An organization or program that develops leadership and management skills",
                  "res/images/lulab_logo.jpeg",
                ),
              ],
            )),
        const Text("\n\n\n"),
        const Text("\n\n\n"),
        // SizedBox(
        //     height: 180.0,
        //     width: 1000.0,
        //     child: GridView.count(
        //       crossAxisCount: 2,
        //       physics: const NeverScrollableScrollPhysics(),
        //       shrinkWrap: true,
        //       children: [
        //         _buildLTItem(
        //             "Junior class",
        //             "Children will learn the basics of programming",
        //             "res/images/lulab_logo.jpeg"),
        //         _buildLTItem(
        //             'Industrial class',
        //             "Enhance students' professional skills and practical \nexperience in computer science and artificial intelligence.",
        //             "res/images/lulab_logo.jpeg"),
        //       ],
        //     )),
        // SizedBox(
        //     height: 180.0,
        //     width: 1000.0,
        //     child: GridView.count(
        //       crossAxisCount: 2,
        //       physics: const NeverScrollableScrollPhysics(),
        //       shrinkWrap: true,
        //       children: [
        //         _buildLTItem(
        //             "Marketing Department",
        //             "Promoting products or services, communicating with customers and other tasks",
        //             "res/images/lulab_logo.jpeg"),
        //         _buildLTItem(
        //           'Leadership club',
        //           "An organization or program that develops leadership and management skills",
        //           "res/images/lulab_logo.jpeg",
        //         ),
        //       ],
        //     )),
      ]));
}
