import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("New Group"),
                  value: "New Group",
                ),
                PopupMenuItem(
                  child: Text("New Broadcast"),
                  value: "New Broadcast",
                ),
                PopupMenuItem(
                  child: Text("Whats app web"),
                  value: "Whats app web",
                ),
                PopupMenuItem(
                  child: Text("Stared Messages"),
                  value: "Stared  Messages",
                ),
                PopupMenuItem(
                  child: Text("Setting "),
                  value: "Setting",
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS")
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Icon(Icons.camera_alt),
          Icon(Icons.chat),
          Icon(Icons.chat),
          Icon(Icons.chat)
        ],
      ),
    );
  }
}
