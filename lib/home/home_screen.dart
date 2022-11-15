import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listPopMenu = ("Logout");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          PopupMenuButton(
              onSelected: ((value) {

              })
              ,itemBuilder: 
              ((context) {
                return listPopMenu.map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice));
                  
              })),
        ],
      ),
      body: const Center(
        child: Text("Welcome User !!"),
      ),
    );
  }
}
