import 'package:flutter/material.dart';
import 'package:tweetlonger/screens/addTweet.dart';
import 'package:tweetlonger/screens/displayTweet.dart';
import 'package:tweetlonger/screens/homepage.dart';
import 'package:tweetlonger/screens/profile.dart';
import 'package:tweetlonger/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => Homepage(),
        '/addTweet': (BuildContext context) => AddTweet(),
        '/displayTweet': (BuildContext context) => DisplayTweet(),
        '/profile': (BuildContext context) => Profile(),
        '/settings': (BuildContext context) => Settings(),
      },
    );
  }
}
