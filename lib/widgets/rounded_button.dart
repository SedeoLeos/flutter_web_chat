import 'package:web_chat/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const RoundedButton({super.key, required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Config.colors.textColorMenu,
      borderRadius: BorderRadius.circular(30),
      elevation: 5,
      // shape: RoundedRectangleBorder(),
      color: Colors.white,
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Config.colors.textColorMenu,
            size: 13,
          ),
        ),
      ),
    );
  }
}
