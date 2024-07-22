import 'package:adv_flutter_ch8/JsonParsing%20With%20Map%20of%20List/Provider/Post%20Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Provider.of<PostProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        centerTitle: true,
        title: Text(
          'POST JSON DATA',
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 3,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.builder(
        itemCount: postProvider.postModal.posts.length,
        itemBuilder: (context, index) =>
            Card(
              color: Colors.grey.shade800,
              child: ListTile(
                leading: Text(
                  postProvider.postModal.posts[index].id.toString(),
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                ),
                title: Text(
                  postProvider.postModal.posts[index].title,
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                ),
                subtitle: Text(
                 'Views : ${postProvider.postModal.posts[index].views.toString()}',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                ),
                trailing: Text(
                    postProvider.postModal.posts[index].reaction.likes.toString(),
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                ),
              ),
            ),
      ),
    );
  }
}
