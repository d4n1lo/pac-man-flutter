import 'package:bonfire/bonfire.dart';
import 'package:pacman/hero_pacman.dart';

class Dot extends GameDecoration with Sensor {
  int score = 1;

  Dot(Vector2 position)
      : super.withSprite(
          sprite: Sprite.load('map/dot.png'),
          position: position,
          size: Vector2(16, 16),
        );

  @override
  void onContact(GameComponent component) {
    if (component is HeroPacMan) {
      //HeroPacMan.score++;
      HeroPacMan.scoreDois++;
      removeFromParent();
      // print(HeroPacMan.score);
      // print(HeroPacMan.scoreDois);
    }
    // print(HeroPacMan.score);
    //print(HeroPacMan.scoreDois);
  }
}
