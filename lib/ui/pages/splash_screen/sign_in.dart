// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutixapp/auth/auth.dart';
import 'package:flutixapp/ui/pages/splash_screen/confirmation.dart';
import 'package:flutixapp/ui/pages/splash_screen/sign_up.dart';
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool _loading = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();

  handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final email = _ctrlEmail.value.text;
      final password = _ctrlPassword.value.text;

      setState(() => _loading = true);

      try {
        await Auth().login(email, password);
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => confir()),
        );
      } catch (error) {
        print('Error during login: $error');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed. Please try again.'),
          ),
        );
      } finally {
        setState(() => _loading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 20),
                    child: Text(
                      "Welcome back,",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 85),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        image: DecorationImage(
                          image: AssetImage("assets/splash/logo-black.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Text(
              "Explorer!",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: _ctrlEmail,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insert your email address';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  labelText: "Email Address",
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "Insert your email address...",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 170, 145, 31),
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Form(
              child: TextFormField(
                controller: _ctrlPassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insert your password';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "*********",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 170, 145, 31),
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85, left: 30),
                child: Text(
                  "Continue to Sign In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => handleSubmit(),
                child: _loading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 130, top: 80),
                        child: Icon(
                          Icons.arrow_circle_right,
                          color: Colors.yellow,
                          size: 60,
                        ),
                      ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 80),
                child: Text(
                  "Start fresh now?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => signUp()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 80),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color.fromARGB(255, 171, 158, 37),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
