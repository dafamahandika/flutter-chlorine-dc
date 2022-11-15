import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Icon(Icons.rocket_launch,
                        size: 100, color: Colors.blue)),
                SizedBox(height: 15),
                Center(
                  child: Text("News App",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.black)),
                ),
                SizedBox(height: 18),
                Text(
                  "Email :",
                  style: Theme.of(context).textTheme.caption,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: "Input Your Email"),
                ),
                SizedBox(height: 18),
                Text(
                  "Password :",
                  style: Theme.of(context).textTheme.caption,
                ),
                const TextField(
                    obscureText: true,
                    decoration:
                        InputDecoration(hintText: "Input Your Password")),
                SizedBox(height: 15),
                Center(
                  child: ElevatedButton(
                      onPressed: () => redirecToHome(),
                      child: const Text("Submit")),
                )
              ],
            ),
          ),
        ));
  }

  void redirecToHome() {
    const snackBar = SnackBar(content: Text("Login Berhasil"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    Navigator.of(context).pushNamedAndRemoveUntil("home", (route) => false);
  }
}
