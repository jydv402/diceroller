import 'package:flutter/material.dart';
import 'dart:math';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int value = 0;
  String dice = "Roll the Dice";

  void _roll() {
    setState(() {
      value = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text("Dice Roller", style: TextStyle(fontSize: 36)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/$value.png"),
              const SizedBox(height: 60),
              Text(dice, style: const TextStyle(fontSize: 24)),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _roll();
            dice = "You rolled a $value";
          },
          label: const Text("Roll the Dice"),
          icon: const Icon(Icons.casino)),
    );
  }
}
