import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:my_app/user_view/game_view.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  static const String routeName = "/drawer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple, title: const Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100, bottom: 10),
        child: GestureDetector(
          child: ListTile(
              title: ElevatedButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Game_view()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
            ),
            child: const Text('Game',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white)),
          )),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            GestureDetector(
              child: const ListTile(
                title: Text('Profile'),
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => profile()));
                // },
              ),
            ),
            Text(
              User.email!,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.only(left: 100, right: 100, bottom: 10),
                // ignore: prefer_const_constructors
                child: ElevatedButton(
                  onPressed: () => FirebaseAuth.instance.signOut(),
                  child: const Text('logout',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
