import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Sign In",
    home: signIn(),
  ));
}

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  //createing a boolean variable named as is checked.
  // bool _ischecked = false;
  bool value = false;

  // void onChanged(bool value){
  //   _ischecked = value;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Image(
            //   // images/background.jpg
            //   image: AssetImage(""),
            //   fit: BoxFit.cover,
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            // ),
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/account1.jpg"),
                      backgroundColor: Colors.black,
                      radius: 50.0,
                    ),
                  ),
                  const Text(
                    "Hello",
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                  ),
                  const Text(
                    "You need to sign in or create an account",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 90.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter your ",
                          border: OutlineInputBorder(),
                          label: Text("Email")),
                    ),
                  ),
                  // SizedBox(height: 30.0,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 16.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        // hoverColor: Colors.yellow,
                        hintText: "Enter your password",
                        border: OutlineInputBorder(),
                        label: Text("Password"),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 16.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Repeat your password",
                          border: OutlineInputBorder(),
                          label: Text("Repeat")),
                    ),
                  ),
      
                  //button
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 45.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 16.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Stay connected"),
                        Text(
                          "Forget Password",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: const [
                        Expanded(
                            child: Divider(
                          color: Colors.black,
                        )),
                        Text("OR"),
                        Expanded(
                            child: Divider(
                          color: Colors.black,
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
      
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        // style: ButtonStyle(backgroundColor: color,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
