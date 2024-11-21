import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'View/Pages/notedetails.dart';
import 'View/Pages/nothomepage.dart';
import 'View/Widgets/bottom.dart';
import 'View/Widgets/bottom_nav_buttons.dart';
import 'View/Widgets/bottomnavbar.dart';
import 'View/Widgets/bottomnavbar_button.dart';
import 'View/Widgets/tabbar.dart';
import 'View/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NoteHomePage(),
    );
  }
}
