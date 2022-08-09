import 'package:flutter/material.dart';

import 'package:recipeapp/size_config.dart';

import 'info.dart';
import 'profile_menu_item.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listofProfileItem = [
      {
        'iconSrc': "assets/icons/bookmark_fill.svg",
        'title': "Saved Recipes",
        'press': () {},
      },{
        "iconSrc": "assets/icons/chef_color.svg",
        "title": "Super Plan",
        "press": () {},
      },{
        "iconSrc": "assets/icons/language.svg",
        "title": "Change Language",
        "press": () {},
      },{
        "iconSrc": "assets/icons/info.svg",
        "title": "Help",
        "press": () {},
      }
    ];

    return Column(
      children: [
        Info(
          name: "John Doe",
          email: "johndoe@gmail.com",
          image: "assets/images/pic.png",
        ),
        SizedBox(
          height: SizeConfig.defaultSize * 2,
        ),
        Column(
          children: List.generate(
              listofProfileItem.length,
              (index) => ProfileMenuItem(
                    title: listofProfileItem[index]['title'],
                    iconSrc: listofProfileItem[index]['iconSrc'],
                    press: listofProfileItem[index]['press'],
                  )),
        ),
      ],
    );
  }
}


