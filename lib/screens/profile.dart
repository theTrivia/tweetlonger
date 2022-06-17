import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: SizedBox(
                child: Icon(
                  Icons.circle_outlined,
                  size: 200,
                ),
              ),
            ),
            const Text(
              '@trivia',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                //Open Twitter App
              },
              child: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
