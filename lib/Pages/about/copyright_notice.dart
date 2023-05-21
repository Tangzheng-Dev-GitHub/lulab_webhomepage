import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cn(BuildContext context) {
  return CupertinoAlertDialog(
    title: const Text(
      "Copyright Notice",
      style: TextStyle(
          fontSize: 20.0, fontFamily: "MyFontStyle", color: Colors.black),
    ),
    content: const Text('''\n
            For any information that is available in the public area and uploaded by you through the mobile terminal of Lu Xiangqian Laboratory
            For content protected by copyright, the user shall be responsible for the authenticity and legality of such content, and guarantee
            own full and unblemished title and intellectual property rights to or full license to such content,
            There is no violation of the legitimate rights and interests of third parties, including but not limited to copyright, portrait
            rights, trademark rights, patent rights, enterprise name rights, trade name rights, trade secrets, personal privacy,
            equal rights.'''),
    actions: [
      CupertinoDialogAction(
        child: const Text(
          "  √ accept and exit  ",
          style:
              TextStyle(fontSize: 20.0, fontFamily: "han", color: Colors.green),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  );
}
