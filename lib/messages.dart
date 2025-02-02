import 'package:web_chat/chat.dart';
import 'package:web_chat/widgets/button.dart';
import 'package:web_chat/config/config.dart';
import 'package:web_chat/widgets/custom_dropdown.dart';
import 'package:web_chat/widgets/message_item.dart';
import 'package:web_chat/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Messages extends StatefulWidget {
  final void Function()?  onOpenMenu;
  final bool showMenu;

  const Messages({super.key, this.onOpenMenu, this.showMenu = false});
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<String> itemFilters = ["Recent Chat", "Old Chat"];

  String selectValue = "Recent Chat";
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Config.colors.backgroundColor1,
              Config.colors.backgroundColor2,
            ],
            begin: Alignment.centerLeft,
            stops: [0, 0.2],
            end: Alignment.centerRight,
            tileMode: TileMode.clamp,
          )),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chats",
                              style: Config.styles.prymaryTextStyle.copyWith(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            CustomDropdown(
                              items: itemFilters,
                              value: selectValue,
                            ),
                          ],
                        ),
                        CButton(
                          prefix: Icons.add,
                          title: "New Chat",
                          onTap: () {},
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CSearch(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  controller: controller,
                  child: SingleChildScrollView(
                    controller: controller,
                    padding: EdgeInsets.zero,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          MessageItem(
                            onTap: widget.showMenu
                                ? () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (ctx) => ChatMessage(
                                                  plateform: widget.showMenu,
                                                )));
                                  }
                                : (){},
                            profil_asset: Config.assets.user1,
                            notif: 2,
                            statut: StatusType.WRITE,
                            username: "OnProgramme",
                            statutMessage: "writes",
                            time: "1 minute ago",
                            textMessage:
                                "Most of its text is made up from sections 1.10.32–3 of Cicero's De finibus bonorum et malorum (On the Boundaries of Goods and Evils; finibus may also be translated as purposes).",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          MessageItem(
                            profil_asset: Config.assets.user2,
                            notif: 1,
                            statut: StatusType.RECORD,
                            isVoice: true,
                            haveFile: true,
                            username: "Jores Valdes",
                            statutMessage: "records voice message",
                            time: "1 minute ago",
                            textMessage: "Voice message (01:15)",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          MessageItem(
                              isSelected: true,
                              profil_asset: Config.assets.user3,
                              statut: StatusType.LAST_AGO,
                              username: "Harold Beranger",
                              statutMessage: "last online 5 hours ago",
                              time: "3 days ago",
                              textMessage:
                                  "Cicero famously orated against his political opponent Lucius Sergius Catilina.", notif: 0,),
                          const SizedBox(
                            height: 15,
                          ),
                          MessageItem(
                            profil_asset: Config.assets.user4,
                            notif: 2,
                            statut: StatusType.LAST_AGO,
                            username: "Aurore Belvine",
                            statutMessage: "last online 5 hours ago",
                            time: "3 days ago",
                            textMessage:
                                "Most of its text is made up from sections 1.10.32–3 of Cicero's De finibus bonorum et malorum (On the Boundaries of Goods and Evils; finibus may also be translated as purposes).",
                          ),
                          SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        if (widget.showMenu)
          Container(
            margin: EdgeInsets.only(left: 25, top: 20),
            child: InkWell(
              onTap: widget.onOpenMenu,
              child: Icon(
                FeatherIcons.menu,
                size: 30,
              ),
            ),
          )
      ],
    );
  }
}
