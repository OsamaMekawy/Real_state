import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realstate/Modules/Details/productDetails/list_of_products.dart';
import 'package:realstate/Modules/Details/productDetails/state_details.dart';
import 'package:realstate/Modules/Lists/car_list.dart';

import 'package:realstate/Modules/Home/home.dart';
import 'package:realstate/Modules/Login_sign/signup.dart';
import 'package:realstate/Modules/layout/layOut.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade100,
            elevation: 0,
            //   backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,

            ),


        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LayoutScreen(),

    );
  }
}

