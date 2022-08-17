import 'package:bonfire/bonfire.dart';
import 'package:pacman/ghost_sprite.dart';
import 'package:pacman/main.dart';

class Ghost extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  Ghost({
    required Vector2 position,
  }) : super(
            position: position,
            size: Vector2(16, 16),
            speed: 60,
            animation: SimpleDirectionAnimation(
              idleRight: GhostSprite.idleRight,
              runRight: GhostSprite.runRight,
              idleLeft: GhostSprite.idleLeft,
              runLeft: GhostSprite.runLeft,
              idleDown: GhostSprite.idleDown,
              runDown: GhostSprite.runDown,
              idleUp: GhostSprite.idleUp,
              runUp: GhostSprite.runUp,
            )) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 5,
        align: Vector2(2, 2),
      ),
    ]));
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        simpleAttackMelee(
          damage: 30,
          size: Vector2(40, 40),
          withPush: true,
        );
      },
      radiusVision: tileSize * 3,
    );
    runRandomMovement(dt, timeKeepStopped: 200);

    super.update(dt);
  }
}
