import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'dart:async' as async;

import 'package:pacman/hero_pacman.dart';

class PlayerInterface extends StatefulWidget {
  final BonfireGame game;
  static const overlayKey = 'playerInterface';
  const PlayerInterface({Key? key, required this.game}) : super(key: key);

  @override
  State<PlayerInterface> createState() => _PlayerInterfaceState();
}

class _PlayerInterfaceState extends State<PlayerInterface> {
  late async.Timer _lifeTimer;
  double life = 0;
  final double widthMax = 100;
  double widthCurrent = 100;
  var scoreFinal = 0;

  get score => HeroPacMan.scoreDois;

  @override
  void initState() {
    _lifeTimer =
        async.Timer.periodic(const Duration(milliseconds: 20), _verifyLife);
    super.initState();
  }

  @override
  void dispose() {
    _lifeTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.50),
      child: Row(
        children: [
          const SizedBox(
            width: 120,
          ),
          Text(
            'Score: $scoreFinal',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  void _verifyLife(async.Timer timer) {
    if (score == HeroPacMan.scoreDois) {
      setState(() {
        //print(score);
        scoreFinal = score;
      });
    }
  }
}
