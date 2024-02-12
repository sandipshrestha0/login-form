import 'package:flutter/material.dart';

import 'package:signin_login_form/forgot.dart';
import 'package:signin_login_form/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Center(
              child: Text(
            "Welcome Back",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23.0),
          )),
          Text("Enter your Credentioal Login"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                    hintText: 'password',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()),
                      );
                    },
                    child: Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(500, 50.0),
                        backgroundColor: Colors.purple),
                  ),
                ),
                SizedBox(
                  height: 200.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()),
                    );
                  },
                  child: Text("Forgot password"),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Row(
                  children: <Widget>[
                    Text("Don't have account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()),
                        );
                      },
                      child: Text("Sign Up"),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
