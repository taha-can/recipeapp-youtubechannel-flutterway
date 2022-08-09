import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/constants.dart';
import 'package:recipeapp/size_config.dart';

import '../models/NavItem.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 30,
              color: Color(0xFF4B1A39).withOpacity(0.2)),
        ]),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                navItems.items.length,
                (index) => buildIconNavbarItem(
                    isActive: navItems.selectedIndex == index ? true : false,
                    icon: navItems.items[index].icon!,
                    press: () {
                      navItems.changeNavIndex(index: index);

                    })),
          ),
        ),
      ),
    );
  }

  IconButton buildIconNavbarItem(
          {required String icon, bool isActive = false, required press}) =>
      IconButton(
          onPressed: press,
          icon: SvgPicture.asset(
            icon,
            color: isActive ? kPrimaryColor : Color(0xFFD1D4D4),
            height: 22,
          ));
}
