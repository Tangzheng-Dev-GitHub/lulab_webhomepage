import 'package:flutter/material.dart';

import '../home.dart';
import 'a_login.dart';
import 'temp_loading.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        centerTitle: false,
        title: const Text(
          '注册陆向谦实验室',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.white,
        //设置AppBar背景颜色
        leading: Image.network(
          "https://pic4.zhimg.com/v2-84274bc0fc5028dfc784d0719a6e8a65_xll.jpg",
          fit: BoxFit.fill,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              "https://llllline.com/image/wkseller/659/Chinese-ink-and-wash-(184).jpg",
            ),
          ),
        ),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: '姓名'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: '邮箱'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: '密码'),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  runApp(const Loading());
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFAEC933))),
                child: const Text('注册',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
              const Text("          "),
              TextButton(
                onPressed: () {
                  runApp(const MaterialApp(
                      debugShowCheckedModeBanner: false,
                      title: "注册陆向谦实验室",
                      home: LoginPage()));
                },
                child: const Text('已有账户？ 登陆',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    )),
              ),
              const Text("          "),
              TextButton(
                onPressed: () {
                  runApp(const HomePage());
                },
                child: const Text('回到主页',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    )),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
