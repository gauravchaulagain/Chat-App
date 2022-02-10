import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(
                chatModel.isGroup? 'assets/groups.svg': 'assets/person.svg',
                color: Colors.white,
                height: 25,
                width: 30,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(chatModel.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                Text(chatModel.currentMessage,
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
