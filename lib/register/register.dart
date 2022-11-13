import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/login/login.dart';

class register extends StatelessWidget {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final appTitle = 'Registration Form';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(appTitle),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  TextEditingController dateController = TextEditingController();
  void initState() {
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 140.0,
                  width: 140.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwIOApvCCcfkxbmV4GO-lEUpzcSvoeJRG5jA&usqp=CAU'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
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
                  labelText: 'Name',
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
              const SizedBox(height: 10),
              TextFormField(
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
              const SizedBox(height: 10),
              TextFormField(
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
              Container(
                height: 100,
                child: Center(
                  child: TextField(
                    controller:
                        dateController, //editing controller of this TextField
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
                      hintText: 'Enter your DOB',
                      labelText: 'DOB',
                      labelStyle: TextStyle(
                        color: Colors.deepPurple, //<-- SEE HERE
                      ),
                      prefixIcon: Icon(
                        Icons.calendar_today,
                        color: Colors.deepPurple,
                      ),
                      prefixIconColor: Colors.deepPurple,
                      fillColor: Colors.white10,
                      filled: true,
                    ),
                    readOnly: true, // when true user cannot edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(), //get today's date
                          firstDate: DateTime(
                              1980), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ),
                ),
              ),
              TextFormField(
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
                  hintText: 'Enter your Password',
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.deepPurple, //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.deepPurple,
                  ),
                  prefixIconColor: Colors.deepPurple,
                  fillColor: Colors.white10,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
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
                  hintText: 'Enter your password',
                  labelText: 'Confime Password',
                  labelStyle: TextStyle(
                    color: Colors.deepPurple, //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.deepPurple,
                  ),
                  prefixIconColor: Colors.deepPurple,
                  fillColor: Colors.white10,
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                  padding: const EdgeInsets.only(left: 110.0, top: 40.0),
                  // ignore: prefer_const_constructors
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyLogin()));
                    },
                    child: const Text('SignUp',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                    ),
                  )),
              const SizedBox(height: 20),
              /* GestureDetector(
                onTap: (() => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyLogin()))),
                  
              ),*/
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyLogin()));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Already have an account? "),
                      Text(
                        "SignIn",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future signUp() async {
    // showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: ((context) => Center(child: CircularProgressIndicator())),
    // );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: .text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
}
