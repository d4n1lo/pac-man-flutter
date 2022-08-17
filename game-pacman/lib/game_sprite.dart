import 'package:bonfire/bonfire.dart';

class GameSprite {
//argumentos precisam deste metodo SpriteAnimation
  static Future<SpriteAnimation> _sequenceImage(
    String fileName,
  ) {
    return SpriteAnimation.load(
        'pacman/$fileName',
        SpriteAnimationData.sequenced(
          amount: 5,
          stepTime: 0.15,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0),
        ));
  }

  static Future<SpriteAnimation> _sequenceImageidle(
    String fileName,
  ) {
    return SpriteAnimation.load(
        'pacman/$fileName',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0),
        ));
  }

  static Future<SpriteAnimation> _sequenceImagedie(
    String fileName,
  ) {
    return SpriteAnimation.load(
        'pacman/$fileName',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.30,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0),
        ));
  }

  static Future<SpriteAnimation> get idleLeft =>
      _sequenceImageidle('pac_man_left_idle.png');
  static Future<SpriteAnimation> get idleRight =>
      _sequenceImageidle('pac_man_right_idle.png');
  static Future<SpriteAnimation> get runLeft =>
      _sequenceImage('pac_man_left_run.png');
  static Future<SpriteAnimation> get runRight =>
      _sequenceImage('pac_man_right_run.png');
  static Future<SpriteAnimation> get runUp =>
      _sequenceImage('pac_man_up_run.png');
  static Future<SpriteAnimation> get idleUp =>
      _sequenceImageidle('pac_man_up_idle.png');
  static Future<SpriteAnimation> get idleDown =>
      _sequenceImageidle('pac_man_down_idle.png');
  static Future<SpriteAnimation> get runDown =>
      _sequenceImage('pac_man_down_run.png');
  static Future<SpriteAnimation> get die => _sequenceImagedie('pac_die.png');
}
