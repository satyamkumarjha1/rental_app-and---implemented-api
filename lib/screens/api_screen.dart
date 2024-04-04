import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiScreen extends StatefulWidget {
  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
List? listResponse;

class _ApiScreenState extends State<ApiScreen> {
  Future apicall() async {
    http.Response response;
    response =
        (await http.get(Uri.parse("https://reqres.in/api/users?page=2")));

    if (response.statusCode == 200) {
      // stringResponse = response.body;
      mapResponse = json.decode(response.body);
      listResponse = mapResponse!['data'];
      setState(() {
        
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API with reqres'),
      ),
      // body: Center(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(listResponse?[index]['avatar']),
                ),
                Text(listResponse![index]['email'].toString()),
                Text(listResponse![index]['id'].toString()),
                Text(listResponse![index]['first_name'].toString()),
                Text(listResponse![index]['last_name'].toString()),
              ],
            ),
          );
        },
        itemCount: listResponse == null ? 0 : listResponse?.length,
      ),
    );
  }
}
