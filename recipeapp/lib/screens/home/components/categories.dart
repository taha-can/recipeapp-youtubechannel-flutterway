import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Indian", "Italian", "Mexican", "Chinese"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategoryItem(index)),
      ),
    );
  }

  Widget buildCategoryItem(int index) => GestureDetector(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
      decoration: BoxDecoration(
          color: selectedIndex == index
              ? Color(0xFFEFF3EE)
              : Colors.transparent,
          borderRadius:
          BorderRadius.circular(SizeConfig.defaultSize * 1.6)),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize * 2,
          vertical: SizeConfig.defaultSize * 0.5),
      child: Text(
        categories[index],
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color:
            selectedIndex == index ? kPrimaryColor : Color(0XFFC2C2B5)),
      ),
    ),
  );
}