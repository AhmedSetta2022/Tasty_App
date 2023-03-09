import 'package:chatapp/Constans.dart';

class Message {
  final String messege;
  final String id;
  Message(this.messege, this.id);

  factory Message.fromJson(jsonData) {
    return Message(jsonData[kmessage], jsonData['id']);
  }
}
