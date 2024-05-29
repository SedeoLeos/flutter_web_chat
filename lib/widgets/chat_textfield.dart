import 'package:web_chat/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatTextFiels extends StatelessWidget {
  final Widget prefix, suffix;
  final int minLines, maxLines;
  final String hintText;

  const ChatTextFiels(
      {super.key,
      required this.prefix,
      required this.minLines,
      required this.maxLines,
      required this.hintText,
      required this.suffix});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        prefix,
        Expanded(
            child: TextField(
          maxLines: maxLines,
          minLines: minLines,
          style: Config.styles.prymaryTextStyle
              .copyWith(color: Config.colors.textColorMenu),
          decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintStyle: Config.styles.prymaryTextStyle
                  .copyWith(color: Config.colors.textColorMenu.withOpacity(.5)),
              suffixIcon: const Icon(FeatherIcons.smile)),
        )),
        suffix
      ],
    );
  }
}
