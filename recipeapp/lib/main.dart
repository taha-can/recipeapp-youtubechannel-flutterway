import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/NavItem.dart';
import 'package:recipeapp/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (contex) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe App',
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.white,elevation: 0),
          // backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:  HomeScreen(),
      ),
    );
  }
}

