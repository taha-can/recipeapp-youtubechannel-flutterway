import 'package:flutter/material.dart';
import 'package:recipeapp/models/RecipeBundel.dart';
import 'package:recipeapp/screens/profile/components/body.dart';
import 'package:recipeapp/size_config.dart';

import 'categories.dart';
import 'recipe_bundle_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Column(
        children: [
          Categories(),
          Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize*2),
                child: GridView.builder(
                  itemCount: recipeBundles.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1.65),
                    itemBuilder: (context, index) => RecipeBundelCard(recipeBundle: recipeBundles[index],)),
              ))
        ],
      ),
    );
  }
}
