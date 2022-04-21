import 'package:flutter/material.dart';
import "package:quiz_app/models/menu_item.dart";

class MenuItems {

  static const List<MenuItem> menuItems = [
    itemFilterByControllers,
    itemFilterByDuelists,
    itemFilterByInitiators,
    itemFilterBySentinels
  ];

  // TODO: Change the filer icons by each role
  static const itemFilterByControllers =
      MenuItem(text: "Controller", icon: Icons.sort_by_alpha, iconColor: Colors.black87);

  static const itemFilterByDuelists =
    MenuItem(text: "Deulist", icon: Icons.safety_divider_outlined, iconColor: Colors.black87);

  static const itemFilterBySentinels =
    MenuItem(text: "Sentinel", icon: Icons.short_text_rounded, iconColor: Colors.black87);

  static const itemFilterByInitiators =
    MenuItem(text: "Initiators", icon: Icons.access_alarm, iconColor: Colors.black87);

}
