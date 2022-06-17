import 'package:flutter/material.dart';
import 'package:tweetlonger/dummyPosts.dart';
import 'package:tweetlonger/components/tweetCard.dart';

class TweetList extends StatelessWidget {
  const TweetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: DummyPosts.posts.length,
          itemBuilder: (context, cont) {
            return TweetCard(
              DummyPosts.posts[cont].id,
              DummyPosts.posts[cont].title,
              DummyPosts.posts[cont].date,
            );
          }),
    );
  }
}
