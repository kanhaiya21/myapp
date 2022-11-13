import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/login/login.dart';
import 'package:my_app/user_view/landing_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
 final navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
    
  }

  // ignore: non_constant_identifier_names
  class MainPage extends StatelessWidget{
    @override
    Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder<User?>(
       stream: FirebaseAuth.instance.authStateChanges(),
       builder: (context, snapshot) {
         
         if (snapshot.connectionState== ConnectionState.waiting){
         return const Center(child: CircularProgressIndicator());
         } 
         else if (snapshot.hasError){
          return const Center(child: Text('Something went wrong'));
         }        
         else if 
         (
          snapshot.hasData
         ){
          return homePage();
         }else{
          return MyLogin();
         }
       },

      ),
    );
  }
}
