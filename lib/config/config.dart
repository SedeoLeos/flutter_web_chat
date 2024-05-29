import 'package:flutter/material.dart';

class Config {
  static final colors = ThemeColors();
  static final styles = ThemeTextStyle();
  static final assets = ThmeAsset();
}

class ThemeColors {
  final Color primaryBlackColor = const Color.fromARGB(255, 5, 52, 103);
  final Color primaryColor = const Color.fromARGB(255, 32, 152, 212);
  final Color notifColor = const Color.fromARGB(255, 0, 0, 0);
  final Color textColorMenu = const Color(0xFF000000);
  final Color backgroundColor1 = const Color.fromARGB(255, 173, 221, 255);
  final Color checkColor = const Color.fromARGB(255, 11, 64, 170);
  final Color backgroundColor2 = const Color.fromARGB(255, 237, 242, 248);
  final Color shadowButtonColor = const Color(0xFF000000);
  final Color dividerColor = const Color.fromARGB(255, 112, 112, 112);
  final Color shadowCurrentUserChat = const Color(0xFF000000);
}

class ThemeTextStyle {
  final TextStyle prymaryTextStyle = const TextStyle(
    fontFamily: 'TTNorms'
  );
}

class ThmeAsset {
  final String user = 'images/profil1.png';
  final String user1 = 'images/profil1.png';
  final String user2 = 'images/profil2.png';
  final String user3 = 'images/profil3.png';
  final String user4 = 'images/profil4.png';
  final String record = 'icons/record.svg';
  final String write = 'icons/write.svg';
  final String arrowDown = 'icons/arrow_down.svg';
}

enum MenuItemSelect { home, chat, contact, notification, calendar, settings }
