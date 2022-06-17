import 'package:flutter/material.dart';
import 'package:tweetlonger/components/tweetList.dart';

import 'addTweet.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
                // color: Colors.amber,
                height: mediaQuery.size.height * 0.05,
                width: mediaQuery.size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const SizedBox(
                        child: Icon(
                          Icons.circle_outlined,
                          size: 50,
                        ),
                        width: 50,
                        height: 100,
                        // color: Colors.amber,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                    ),
                    GestureDetector(
                      child: const SizedBox(
                        // color: Colors.amber,
                        child: Icon(Icons.settings),
                        width: 50,
                        height: 100,
                        // color: Colors.amber,
                      ),
                      onTap: () {
                        print('settings button tapped');
                      },
                    ),
                  ],
                )
                // color: Colors.black,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Your Tweets',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),

          const TweetList(),
          // AddTweet(),
        ],
      )),
      floatingActionButton: SizedBox(
        width: 70.0,
        height: 70.0,
        child: RawMaterialButton(
          shape: const CircleBorder(),
          fillColor: Colors.blue,
          // elevation: 0.0,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/addTweet');
          },
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
