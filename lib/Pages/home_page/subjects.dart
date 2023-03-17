import 'package:flutter/material.dart';

Widget subjects() {
  return Column(
    children: [
      const Center(
        child: Text(
          "\n 混沌创新学科",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const Text("\n"),
      const Divider(
        height: 10.0,
        color: Colors.yellow,
        thickness: 5.0,
        indent: 650.0,
        endIndent: 650.0,
      ),
      Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading:Image.network(
                  "https://www.hundun.cn/dierquxian.png",fit: BoxFit.fill
              ),
              title: const Text(
                  '第二曲线',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text(
                '通过8个思维模型系统完备学创新学科基础理论，帮助个人和企业突破极限 ，实现10倍速式的增长。',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading:Image.network("https://www.hundun.cn/dierquxian.png"
                  ,fit: BoxFit.fill),
              title: const Text(
                  '第二曲线',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text(
                '通过8个思维模型系统完备学创新学科基础理论，帮助个人和企业突破极限 ，实现10倍速式的增长。',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading:Image.network("https://www.hundun.cn/dierquxian.png",fit: BoxFit.fill,),
              title: const Text(
                  '第二曲线',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text(
                '通过8个思维模型系统完备学创新学科基础理论，帮助个人和企业突破极限 ，实现10倍速式的增长。',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
