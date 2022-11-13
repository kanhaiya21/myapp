import 'dart:js';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types

class forgotpass extends StatelessWidget {
  forgotpass({Key? key}) : super(key: key);
final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Forgotpassword Form'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
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
                              'https://image.shutterstock.com/image-vector/icon-concept-about-forgot-password-260nw-1909912900.jpg'),
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
                  controller: emailController,
                  cursorColor: Colors.deepPurple,
                  textInputAction: TextInputAction.done,
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
                      Icons.person,
                      color: Colors.deepPurple,
                    ),
                    prefixIconColor: Colors.deepPurple,
                    fillColor: Colors.white10,
                    filled: true,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) => 
                  email !=null && !EmailValidator.validate(email),
                   ? 'Enter a valid email'
                   : null,
                  
                ),
              ),
              const SizedBox(height: 40),
              Container(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  // ignore: prefer_const_constructors
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Reset password',
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
      ),
    );
  }
  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: ((context) => Center(child: CircularProgressIndicator())),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
