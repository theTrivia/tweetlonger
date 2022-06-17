import 'package:flutter/material.dart';
import 'package:tweetlonger/functions/postTweet.dart';

class AddTweet extends StatelessWidget {
  final _titleInputController = TextEditingController();
  final _messageInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New Tweet',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    controller: _titleInputController,
                    decoration: InputDecoration(
                      hintText: 'Title (optional)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    minLines: 10,
                    keyboardType: TextInputType.multiline,
                    controller: _messageInputController,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Enter your message here...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                          )),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () async {
                        final newTweet = PostTweet(_titleInputController.text,
                            _messageInputController.text);
                        newTweet.postTweet();
                        Navigator.pop(context);
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
