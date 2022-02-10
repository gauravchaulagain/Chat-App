
import 'package:flutter/material.dart';
import 'package:chatapp/CustomUI/CustomCard.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body:ListView(
        children:[
          CustomCard(),
          CustomCard(),
        ]


      )
    );
  }
}