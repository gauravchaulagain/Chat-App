import 'dart:ffi';

class ChatModel {
  String? name;
  String? icon;
  bool? isGroup;
  String? currentMessage;
  String? time;

  ChatModel(
      {this.name, this.icon, this.isGroup, this.time, this.currentMessage});
}
