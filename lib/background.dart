import "package:dice/dice.dart";
import "package:flutter/material.dart";

class Background extends StatelessWidget {
  const Background(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Dice(),
    );
  }
}
