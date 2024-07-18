import 'package:adv_flutter_ch8/Json%20Parsing/provider/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        centerTitle: true,
        title: Text('JSON DATA',style: TextStyle(color: Colors.white,letterSpacing: 3,fontWeight: FontWeight.w500),),
      ),
      backgroundColor: Colors.grey.shade800,
      body: ListView.builder(
        itemCount: homeProvider.albumList.length,
        itemBuilder: (context, index) => Card(
          color: Colors.grey.shade600,
          child: ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(homeProvider.albumList[index].url),
            ),
            title: Text(homeProvider.albumList[index].title,style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
