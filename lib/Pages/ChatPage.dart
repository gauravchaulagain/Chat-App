import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/CustomUI/CustomCard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Gaurav",
        isGroup: false,
        currentMessage: "Hello",
        time: "12:00",
        icon: "person.svg"),
    ChatModel(
        name: "Maikalal",
        isGroup: false,
        currentMessage: "Hello",
        time: "1:00",
        icon: "groups.svg"),
    ChatModel(
        name: "Shyam",
        isGroup: false,
        currentMessage: "Hello",
        time: "7:00",
        icon: "person.svg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) => CustomCard(chatModel:chats[index])));
  }
}
