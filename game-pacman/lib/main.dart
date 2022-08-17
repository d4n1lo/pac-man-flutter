import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/dot.dart';
import 'package:pacman/ghost.dart';
import 'package:pacman/hero_pacman.dart';
import 'package:pacman/interfaces/player_interface.dart';

double tileSize = 16;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BonfireTiledWidget(
      showCollisionArea: false,
      joystick: Joystick(
        directional: JoystickDirectional(),
        keyboardConfig: KeyboardConfig(),
      ),
      map: TiledWorldMap('map/teste.json',
          forceTileSize: const Size(16, 16),
          objectsBuilder: {'dot': (p) => Dot(p.position)}),
      player: HeroPacMan(),
      components: [
        Ghost(position: Vector2(tileSize * 9, tileSize * 1)),
        Ghost(position: Vector2(tileSize * 11, tileSize * 8)),
        Ghost(position: Vector2(tileSize * 14, tileSize * 11)),
        Ghost(position: Vector2(tileSize * 17, tileSize * 5)),
        Ghost(position: Vector2(tileSize * 6, tileSize * 11)),
        Ghost(position: Vector2(tileSize * 12, tileSize * 26)),
        Ghost(position: Vector2(tileSize * 6, tileSize * 26)),
        //Ghost(position: Vector2(tileSize * 3, tileSize * 26)),
        //Ghost(position: Vector2(tileSize * 17, tileSize * 26)),
        //Ghost(position: Vector2(tileSize * 22, tileSize * 26)),
        //Ghost(position: Vector2(tileSize * 11, tileSize * 15)),
        //Ghost(position: Vector2(tileSize * 13, tileSize * 15)),
        //Ghost(position: Vector2(tileSize * 22, tileSize * 15)),
      ],
      overlayBuilderMap: {
        PlayerInterface.overlayKey: (context, game) => PlayerInterface(
              game: game,
            )
      },
      initialActiveOverlays: const [PlayerInterface.overlayKey],
      cameraConfig: CameraConfig(
        moveOnlyMapArea: false,
        zoom: 1.1,
      ),
    ));
  }
}
