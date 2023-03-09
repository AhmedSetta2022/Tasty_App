import 'package:flutter/material.dart';
import 'package:testapi/model.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String url = "https://jsonplaceholder.typicode.com/posts";
Future getdata() async {
  http.Response response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body);
  print(data);
  return data;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getdata(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Text(
                          snapshot.data[index]["title"],
                        ),
                      );
                    });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}
