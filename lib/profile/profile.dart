import 'package:flutter/material.dart';
import 'package:my_app/user_view/landing_page.dart';

// ignore: camel_case_types
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Profile'),
        //back button
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      // profile image padding
      body: Container(
        padding: const EdgeInsets.only(left: 5, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          // profile image
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc='),
                        ),
                      ),
                    ),
                    //edit icon
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 4, color: Colors.white),
                            color: Colors.deepPurple),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),

                      //borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                      //borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter your name',
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      color: Colors.deepPurple, //<-- SEE HERE
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                    ),
                    prefixIconColor: Colors.deepPurple,
                    fillColor: Colors.white10,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),

                      //borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                      //borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter your phone number',
                    labelText: 'Phone',
                    labelStyle: TextStyle(
                      color: Colors.deepPurple, //<-- SEE HERE
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.deepPurple,
                    ),
                    prefixIconColor: Colors.deepPurple,
                    fillColor: Colors.white10,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),

                      //borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                      //borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter your email Id',
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.deepPurple, //<-- SEE HERE
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                    prefixIconColor: Colors.deepPurple,
                    fillColor: Colors.white10,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                      padding:
                          const EdgeInsets.only(left: 190, right: 10, top: 20),
                      // ignore: prefer_const_constructors
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Edit',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white)),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple),
                        ),
                      )),
                  Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 190, bottom: 10),
                      // ignore: prefer_const_constructors
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homePage()));
                        },
                        child: const Text('Cancel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.deepPurple)),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white54),
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
