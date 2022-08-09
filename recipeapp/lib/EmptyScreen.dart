

import 'package:flutter/material.dart';
import 'package:recipeapp/components/bottom_navigation_bar.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text('Empty Screen'),
      ),
    );
  }
}
