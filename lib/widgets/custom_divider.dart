import 'package:web_chat/config/config.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String title;

  const CustomDivider({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            color: Config.colors.textColorMenu.withOpacity(.15),
          )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: Config.styles.prymaryTextStyle.copyWith(
                  fontSize: 11,
                  color: Config.colors.textColorMenu.withOpacity(.7)),
            ),
          ),
          Expanded(
              child: Divider(
            color: Config.colors.textColorMenu.withOpacity(.15),
          )),
        ],
      ),
    );
  }
}
