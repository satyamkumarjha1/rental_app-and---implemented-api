import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rental_app/screens/user_model.dart';

class JPApiScreen extends StatefulWidget {
  @override
  State<JPApiScreen> createState() => _JPApiScreenState();
}

class _JPApiScreenState extends State<JPApiScreen> {
  List<UsersModel> userslist = [];
  Future<List<UsersModel>> getUsersApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        userslist.add(UsersModel.fromJson(i));
      }
      return userslist;
    } else {
      return userslist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JsonPlaceholderApi"),
      ),
      body: FutureBuilder(
          future: getUsersApi(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Colors.red,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "loading..",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ],
              ));
            } else {
              return ListView.builder(
                  itemCount: userslist.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name:  ${userslist[index].name.toString()}'),
                            Text(
                                'UserName: ${userslist[index].username.toString()}'),
                            Text(
                              'Phone: ${userslist[index].phone.toString()}',
                            ),
                            Text(
                                'City: ${userslist[index].address!.city.toString()}'),
                            Text(
                                'ZipCode: ${userslist[index].address!.city.toString()}'),
                            Text('Email: ${userslist[index].email.toString()}'),
                          ],
                        ),
                      ),
                    );
                  });
            }
          }),
    );
  }
}
