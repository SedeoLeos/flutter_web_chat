import 'package:web_chat/svgIcon.dart';
import 'package:web_chat/config/config.dart';
import 'package:web_chat/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatefulWidget {
  final Function(int value)? selectItems;

  const Menu({super.key, this.selectItems});
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  MenuItemSelect selectItem = MenuItemSelect.home;

  void changeValue(value) {
    selectItem = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black,
            offset: Offset(20, 10),
            // spreadRadius: 10,
            blurRadius: 50),
      ]),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 50, bottom: 40),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                          backgroundImage: AssetImage(Config.assets.user),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Henry Jabbawockiez",
                              style: Config.styles.prymaryTextStyle
                                  .copyWith(fontSize: 12.5),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              child: SvgIcon(
                                asset: Config.assets.arrowDown,
                                color: Config.colors.primaryBlackColor,
                                size: 15,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                MenuItem(
                  title: "Home",
                  groupValue: MenuItemSelect.home,
                  value: selectItem,
                  onChanged: changeValue,
                  icon: FeatherIcons.grid,
                ),
                MenuItem(
                  title: "Chat",
                  groupValue: MenuItemSelect.chat,
                  value: selectItem,
                  onChanged: changeValue,
                  icon: FontAwesomeIcons.commentDots,
                ),
                MenuItem(
                  title: "Contact",
                  groupValue: MenuItemSelect.contact,
                  value: selectItem,
                  onChanged: changeValue,
                  icon: FeatherIcons.user,
                ),
                MenuItem(
                  title: "Notification",
                  groupValue: MenuItemSelect.notification,
                  value: selectItem,
                  onChanged: changeValue,
                  icon: FeatherIcons.bell,
                ),
                MenuItem(
                  title: "Calendrier",
                  groupValue: MenuItemSelect.calendar,
                  value: selectItem,
                  onChanged: changeValue,
                  icon: FeatherIcons.calendar,
                ),
                MenuItem(
                  title: "Paramètres",
                  groupValue: MenuItemSelect.settings,
                  value: selectItem,
                  onChanged: changeValue,
                  icon: FeatherIcons.settings,
                ),
              ],
            ),
          ),
          MenuItem(
            title: "Déconnexion",
            groupValue: MenuItemSelect.settings,
            value: selectItem,
            onChanged: changeValue,
            icon: FeatherIcons.power,
          ),
        ],
      ),
    );
  }
}
