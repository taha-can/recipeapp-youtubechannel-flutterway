import 'package:flutter/material.dart';
import 'package:recipeapp/components/bottom_navigation_bar.dart';
import 'package:recipeapp/constants.dart';
import 'package:recipeapp/size_config.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ProfileBody(),
      bottomNavigationBar: BottomNavigation(),
    );
  }


}
