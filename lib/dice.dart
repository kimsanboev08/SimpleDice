import 'package:flutter/material.dart';
import 'dart:math';

final rand = Random();

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return DiceState();
  }
}

class DiceState extends State<Dice> {
  var currentDice = 6;

  void rollDice() {
    setState(() {
      currentDice = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 170,
            ),
            Image.asset(
              'assets/images/dice-images/dice-$currentDice.png',
              width: 220,
            ),
            const SizedBox(
              height: 170,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: rollDice,
                child: Container(
                  height: 45,
                  width: 160,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 29, 232, 229),
                        Color.fromARGB(255, 61, 236, 30)
                      ],
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.elliptical(20, 20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.4),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "ROLL",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Cantarell',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
