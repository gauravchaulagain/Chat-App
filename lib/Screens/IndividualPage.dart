import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/ChatModel.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatmodel}) : super(key: key);
  final ChatModel chatmodel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                  CircleAvatar(
                      child: SvgPicture.asset(
                        widget.chatModel.isGroup!
                            ? 'assets/groups.svg'
                            : 'assets/person.svg',
                        color: Colors.white,
                        height: 36,
                        width: 36,
                      ),
                      radius: 20,
                      backgroundColor: Colors.grey);
                },
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatmodel.name!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.chatmodel.currentMessage!,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text("Last Seen today at 12:00 PM",
                    style: TextStyle(fontSize: 15))
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("View Contact"),
                  value: "View Contact",
                ),
                PopupMenuItem(
                  child: Text("Media ,Link and Docs"),
                  value: "Media ,Link and Docs",
                ),
                PopupMenuItem(
                  child: Text("Whats app web"),
                  value: "Whats app web",
                ),
                PopupMenuItem(
                  child: Text("Search"),
                  value: "Search",
                ),
                PopupMenuItem(
                  child: Text("Mute Notifications "),
                  value: "Mute Notifications",
                ),
                PopupMenuItem(
                  child: Text("Wallpaper "),
                  value: "Wallpaper",
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
