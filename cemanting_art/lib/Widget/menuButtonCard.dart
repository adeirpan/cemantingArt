import 'package:cemanting_art/model/menuButton.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class MenuButtonCard extends StatelessWidget {
  // const MenuButtonCard({Key? key}) : super(key: key);
  MenuButton menuButton;

  MenuButtonCard({required this.menuButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 89,
      decoration: BoxDecoration(
        border: Border.all(
          color: menuButton.selectedMenu == menuButton.id
              ? Colors.white
              : blackColor,
        ),
        borderRadius: BorderRadius.circular(5),
        color: menuButton.selectedMenu == menuButton.id
            ? blackButtonColor
            : Colors.white,
      ),
      child: Center(
        child: Text(
          menuButton.buttonName,
          style: greyTextStyle.copyWith(
            color: menuButton.selectedMenu == menuButton.id
                ? Colors.white
                : blackButtonColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
