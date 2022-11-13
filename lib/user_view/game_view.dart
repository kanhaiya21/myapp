// import 'package:flutter/material.dart';
// import 'package:my_app/main.dart';

// // ignore: camel_case_types
// class Game_view extends StatelessWidget {
//   const Game_view({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Build a Form widget using the _formKey created above.
//     return SingleChildScrollView(
//       child: Form(
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 const SizedBox(height: 20),
//                 Center(
//                   child: Container(
//                     height: 140.0,
//                     width: 140.0,
//                     decoration: const BoxDecoration(
//                       image: DecorationImage(
//                         image: NetworkImage(
//                             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwIOApvCCcfkxbmV4GO-lEUpzcSvoeJRG5jA&usqp=CAU'),
//                         fit: BoxFit.fill,
//                       ),
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.deepPurple),

//                       //borderRadius: BorderRadius.circular(20),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.deepPurple,
//                       ),
//                       //borderRadius: BorderRadius.circular(12),
//                     ),
//                     hintText: 'Enter your name',
//                     labelText: 'Name',
//                     labelStyle: TextStyle(
//                       color: Colors.deepPurple, //<-- SEE HERE
//                     ),
//                     prefixIcon: Icon(
//                       Icons.person,
//                       color: Colors.deepPurple,
//                     ),
//                     prefixIconColor: Colors.deepPurple,
//                     fillColor: Colors.white10,
//                     filled: true,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.deepPurple),

//                       //borderRadius: BorderRadius.circular(20),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.deepPurple,
//                       ),
//                       //borderRadius: BorderRadius.circular(12),
//                     ),
//                     hintText: 'Enter your phone number',
//                     labelText: 'Phone',
//                     labelStyle: TextStyle(
//                       color: Colors.deepPurple, //<-- SEE HERE
//                     ),
//                     prefixIcon: Icon(
//                       Icons.phone,
//                       color: Colors.deepPurple,
//                     ),
//                     prefixIconColor: Colors.deepPurple,
//                     fillColor: Colors.white10,
//                     filled: true,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.deepPurple),

//                       //borderRadius: BorderRadius.circular(20),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.deepPurple,
//                       ),
//                       //borderRadius: BorderRadius.circular(12),
//                     ),
//                     hintText: 'Enter your email Id',
//                     labelText: 'Email',
//                     labelStyle: TextStyle(
//                       color: Colors.deepPurple, //<-- SEE HERE
//                     ),
//                     prefixIcon: Icon(
//                       Icons.email,
//                       color: Colors.deepPurple,
//                     ),
//                     prefixIconColor: Colors.deepPurple,
//                     fillColor: Colors.white10,
//                     filled: true,
//                   ),
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.deepPurple),

//                       //borderRadius: BorderRadius.circular(20),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.deepPurple,
//                       ),
//                       //borderRadius: BorderRadius.circular(12),
//                     ),
//                     hintText: 'Enter your Password',
//                     labelText: 'Password',
//                     labelStyle: TextStyle(
//                       color: Colors.deepPurple, //<-- SEE HERE
//                     ),
//                     prefixIcon: Icon(
//                       Icons.password,
//                       color: Colors.deepPurple,
//                     ),
//                     prefixIconColor: Colors.deepPurple,
//                     fillColor: Colors.white10,
//                     filled: true,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.deepPurple),

//                       //borderRadius: BorderRadius.circular(20),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.deepPurple,
//                       ),
//                       //borderRadius: BorderRadius.circular(12),
//                     ),
//                     hintText: 'Enter your password',
//                     labelText: 'Confime Password',
//                     labelStyle: TextStyle(
//                       color: Colors.deepPurple, //<-- SEE HERE
//                     ),
//                     prefixIcon: Icon(
//                       Icons.password,
//                       color: Colors.deepPurple,
//                     ),
//                     prefixIconColor: Colors.deepPurple,
//                     fillColor: Colors.white10,
//                     filled: true,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                     padding: const EdgeInsets.only(left: 110.0, top: 40.0),
//                     // ignore: prefer_const_constructors
//                     child: ElevatedButton(
//                       onPressed: () {
//                         //
//                       },
//                       child: const Text('Register',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 22,
//                               color: Colors.white)),
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.deepPurple),
//                       ),
//                     )),
//                 const SizedBox(height: 20),
//               ]),
//         ),
//       ),
//     );
//   }
// }
