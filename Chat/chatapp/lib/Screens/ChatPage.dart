import 'package:chatapp/Constans.dart';
import 'package:chatapp/Customs/Custon_ChatContainer...dart';
import 'package:chatapp/Modules/Messagae.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyChatPage extends StatelessWidget {
  MyChatPage({super.key});
  static String id = "ChatPage";
  final _controller = ScrollController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference messeges =
      FirebaseFirestore.instance.collection('Messages');
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
        stream: messeges.orderBy(kCreateDate, descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Message> MessageList = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              MessageList.add(Message.fromJson(snapshot.data!.docs[i]));
            }
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/scholar.png",
                      width: 50,
                    ),
                    Text(
                      "PsychoChat",
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 24,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        reverse: true,
                        controller: _controller,
                        itemCount: MessageList.length,
                        itemBuilder: (context, index) {
                          return MessageList[index].id == email
                              ? CustomContainer(
                                  message: MessageList[index],
                                )
                              : Bubblefriendchat(message: MessageList[index]);
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        messeges.add(
                          {
                            'Messages': data,
                            kCreateDate: DateTime.now(),
                            'id': email
                          },
                        );
                        controller.clear();
                        _controller.animateTo(0,
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeIn);
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Your Messege ...",
                          suffix: Icon(
                            Icons.send,
                            color: kprimarycolor,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: kprimarycolor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)))),
                    ),
                  )
                ],
              ),
            );
          } else {
            return Center(child: Text("Loading......"));
          }
        });
  }
}
