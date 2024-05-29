import 'package:web_chat/config/config.dart';
import 'package:web_chat/svgIcon.dart';
import 'package:web_chat/widgets/message_item.dart';
import 'package:flutter/material.dart';

class ItemProfil extends StatelessWidget {
  final String username, profil_asset, statutMessage;
  final bool isSelected;
  final StatusType statut;

  const ItemProfil(
      {super.key,
      required this.username,
      required this.profil_asset,
      required this.statutMessage,
      this.isSelected = false,
      required this.statut});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(profil_asset),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          margin: const EdgeInsets.only(top: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                username,
                style: Config.styles.prymaryTextStyle
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              if (statutMessage != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (statut != null && statut != StatusType.LAST_AGO) ...[
                      SvgIcon(
                          size: statut == StatusType.WRITE ? 4 : 10,
                          color: isSelected
                              ? Colors.white
                              : Config.colors.primaryColor,
                          asset: statut == StatusType.RECORD
                              ? Config.assets.record
                              : Config.assets.write),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                    Text(
                      statutMessage,
                      style: Config.styles.prymaryTextStyle.copyWith(
                          color: isSelected
                              ? Colors.white
                              : Config.colors.primaryColor,
                          fontSize: 11),
                    )
                  ],
                )
            ],
          ),
        ),
      ],
    );
  }
}
