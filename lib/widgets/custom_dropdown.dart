import 'package:web_chat/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> items;
  final Function(dynamic value)? onChanged;
  final dynamic value;

  const CustomDropdown(
      {super.key, required this.items, this.onChanged, this.value});
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      selectedItemBuilder: (c) {
        return items.map((e) => Text(e)).toList();
      },
      isDense: true,
      items: items
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      underline: Container(),
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      hint: Text(
        value,
        style: Config.styles.prymaryTextStyle
            .copyWith(color: Config.colors.textColorMenu),
      ),
      onChanged: onChanged,
    );
  }
}
