import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue,
        child: Text('A'),
      ),
      title: Text('Gaurav',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          Text('Hello', style: TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
      trailing: Text('18:00'),
    );
  }
}
