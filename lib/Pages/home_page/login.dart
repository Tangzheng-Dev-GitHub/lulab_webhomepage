import 'package:flutter/material.dart';

import 'top_navigation_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '登录陆向谦实验室',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 5.0,
            centerTitle: false,
            title: const Text('登录陆向谦实验室', style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 30.0,
            ),),
            backgroundColor: Colors.white,
            //设置AppBar背景颜色
            leading: Image.network(
              "https://pic4.zhimg.com/v2-84274bc0fc5028dfc784d0719a6e8a65_xll.jpg",
              fit: BoxFit.fill,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: '用户名'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '密码'),
                  obscureText: true,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    runApp(const Loading());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(
                          0xFFAEC933))
                  ),
                  child: const Text('登陆', style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                  )),
                ),
                TextButton(
                  onPressed: () {
                    runApp(const MaterialApp(
                        title: "注册陆向谦实验室",
                        home: RegisterPage()
                    ));
                    },
                  child: const Text('没有账户？注册', style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                  )),
                ),
                TextButton(
                  onPressed: () {
                    runApp(const PageBar());
                  },
                  child: const Text('回到主页', style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                  )),
                ),
              ],
            ),
          ),
        ));
  }
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "404",
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const CircularProgressIndicator(),
              TextButton(
                onPressed: () {
                  runApp(const PageBar());
                },
                child: const Text('回到主页', style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        centerTitle: false,
        title: const Text('注册陆向谦实验室', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 30.0,
        ),),
        backgroundColor: Colors.white,
        //设置AppBar背景颜色
        leading: Image.network(
          "https://pic4.zhimg.com/v2-84274bc0fc5028dfc784d0719a6e8a65_xll.jpg",
          fit: BoxFit.fill,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            ElevatedButton(
              onPressed: () {
                runApp(const Loading());
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(
                      0xFFAEC933))
              ),
              child: const Text('注册', style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
              )),
            ),
            TextButton(
              onPressed: () {
                runApp(const MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: "注册陆向谦实验室",
                    home: LoginPage()
                ));
              },
              child: const Text('已有账户？ 登陆', style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
              )),
            ),
            TextButton(
              onPressed: () {
                runApp(const PageBar());
              },
              child: const Text('回到主页', style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
              )),
            ),
          ],
        ),
      ),
    );
  }
}