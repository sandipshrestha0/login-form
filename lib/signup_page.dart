import 'package:flutter/material.dart';
import 'package:signin_login_form/forgot.dart';
import 'package:signin_login_form/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
            "Sign up",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23.0),
          )),
          Text("Create Your Account"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    hintText: 'Username',
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
                  height: 20.0,        ),
                   TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                    hintText: 'Confirm password',
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
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      "Signup",
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
                  height: 10.0,
                ),
                Text("or"),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()),
                      );
                    },
                    style: TextButton.styleFrom(fixedSize:Size(500.0, 50), side: BorderSide(width: 2.0) ),
                    child: Text("Forgot password"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: Text("Login"),
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
