import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/game_sprite.dart';

import 'main.dart';

//objetCollision - colisão para o pacman
class HeroPacMan extends SimplePlayer with ObjectCollision {
//vector2 = igualar x e y
//construtor position
//SimplesDirection: direcionar todas as animaçoes de movimento
  static int id = 1;
  static int scoreDois = 0;
  HeroPacMan()
      : super(
            position: Vector2(
              tileSize * 1,
              tileSize * 1,
            ),
            //tamanha do pacman
            size: Vector2(
              16,
              16,
            ),
            speed: 80,
            life: 90,
            animation: SimpleDirectionAnimation(
              idleRight: GameSprite.idleRight,
              runRight: GameSprite.runRight,
              idleLeft: GameSprite.idleLeft,
              runLeft: GameSprite.runLeft,
              idleDown: GameSprite.idleDown,
              runDown: GameSprite.runDown,
              idleUp: GameSprite.idleUp,
              runUp: GameSprite.runUp,
            )) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 7,
        align: Vector2(0, 0),
      ),
    ]));
  }
  @override
  void render(Canvas canvas) {
    drawDefaultLifeBar(canvas,
        borderWidth: 1, height: 4, align: const Offset(0, 0));
    super.render(canvas);
  }

  @override
  void die() async {
    if (life == 0.0) {
      animation?.playOnce(
        GameSprite.die,
        runToTheEnd: true,
        onFinish: () {
          removeFromParent();
        },
      );
    }
    super.die();
  }
}
