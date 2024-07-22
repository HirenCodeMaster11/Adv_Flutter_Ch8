import 'package:adv_flutter_ch8/Json%20Parsing%202/Provider/UserProvider.dart';
import 'package:adv_flutter_ch8/Json%20Parsing%202/View/UserPage.dart';
import 'package:adv_flutter_ch8/JsonParsing%20With%20Map%20of%20List/Provider/Post%20Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Json Parsing/View/home.dart';
import 'Json Parsing/provider/HomeProvider.dart';
import 'JsonParsing With Map of List/View/Post Page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
        ChangeNotifierProvider(create: (context) => UserProvider(),),
        ChangeNotifierProvider(create: (context) => PostProvider(),)
      ],
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:
        {
          '/' : (context) => PostPage(),
          '/user' : (context) => UserPage(),
          '/home' :(context) => HomePage(),
        },
      ),
    );
  }
}
