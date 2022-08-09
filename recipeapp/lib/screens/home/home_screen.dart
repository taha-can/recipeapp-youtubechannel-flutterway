import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/EmptyScreen.dart';
import 'package:recipeapp/models/NavItem.dart';
import 'package:recipeapp/size_config.dart';

import '../../components/bottom_navigation_bar.dart';
import '../../constants.dart';
import '../profile/components/body.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List listofBodys = [HomeBody(),EmptyScreen(),EmptyScreen(),EmptyScreen(),ProfileBody()];
    return Consumer<NavItems>(
        builder: (context, navItems, child) => Scaffold(
        appBar: navItems.selectedIndex == 4 ? buildProfileAppBar(): buildAppBar(),
        body: listofBodys[navItems.selectedIndex],
        bottomNavigationBar: BottomNavigation() ,
      ),
    );
  }






  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg')),
      centerTitle: true,
      title: Image.asset('assets/images/logo.png'),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg')),
        SizedBox(
          width: SizeConfig.defaultSize * 0.5,
        )
      ],
    );
  }

  AppBar buildProfileAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text("Profile"),
      centerTitle: true,
      actions: [
        TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize * 1.6,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }


}



