import 'package:flutter/material.dart';
import 'package:multi_app/chat_helper/authenticate.dart';


class ChatAppMain extends StatelessWidget {
  const ChatAppMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Authenticate(),
    );
  }
}
