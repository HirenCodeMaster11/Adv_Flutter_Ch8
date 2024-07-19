import 'package:adv_flutter_ch8/Json%20Parsing%202/Provider/UserProvider.dart';
import 'package:adv_flutter_ch8/Json%20Parsing%202/View/UserPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Json Parsing/View/home.dart';
import 'Json Parsing/provider/HomeProvider.dart';

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
        ChangeNotifierProvider(create: (context) => UserProvider(),)
      ],
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:
        {
          '/' : (context) => UserPage(),
          '/home' :(context) => HomePage(),
        },
      ),
    );
  }
}
