import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Pages/home.dart';

void main() {
  // ignore: null_check_always_fails
  if (kDebugMode) {
    print('''
    ##               ##         ##     ##                   #####            ###########
    ##               ##         ##     ##                  ##    ##          ##         ##
    ##               ##         ##     ##                 ##      ##         ############
    ##               ##         ##     ##                ############        ###########
    ##               ##         ##     ##               ##          ##       ##        ##
    #############    #############     #############   ##            ##      ###########
    ''');
    print("THE LULAB HOME WEBSITE STARTED/RESTARTED (in debug mode)");
  }
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )));
}
//80+32+30+188+127+19+69+7+70+200+26+144+106+305+532+167+14=2716
