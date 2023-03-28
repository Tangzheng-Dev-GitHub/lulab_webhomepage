import 'package:flutter/material.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({Key? key}) : super(key: key);

  @override
  _LoginDialogState createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('登录'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: '用户名',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return '请输入用户名';
                }
                return null;
              },
              onSaved: (value) {
                _username = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '密码',
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return '请输入密码';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('取消'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              // TODO: 在此处进行登录验证，并处理结果
              Navigator.pop(context);
            }
          },
          child: const Text('登录'),
        ),
      ],
    );
  }
}
