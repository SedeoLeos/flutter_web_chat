import 'package:web_chat/chat.dart';
import 'package:web_chat/menu.dart';
import 'package:web_chat/messages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final _key = GlobalKey<ScaffoldState>();
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    debugPrint(width.toString());
    return Scaffold(
      key: _key,
      drawer: width >= 999 ? null : const SizedBox(width: 250, child: Menu()),
      body: SafeArea(
        child: Scrollbar(
          controller: controller,
          child: SingleChildScrollView(
            controller: controller,
            child: SizedBox(
              height: height,
              child: Row(
                children: [
                  // width <= 839 && width >= 839 ? 10 :
                  if (width > 869)
                    Expanded(
                      flex: width < 900 && width > 800 ? 4 : 3,
                      child: const Menu(),
                    ),
                  Expanded(
                    flex: 7,
                    child: Messages(
                      showMenu: width <= 999,
                      onOpenMenu: () {
                        _key.currentState?.openDrawer();
                      },
                    ),
                  ),
                  if (width >= 622)
                    Expanded(
                      flex: width < 889 && width > 800 ? 10 : 8,
                      child: ChatMessage(),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
