import 'package:bonfire/bonfire.dart';

class GhostSprite {
//argumentos precisam deste metodo SpriteAnimation
  static Future<SpriteAnimation> _sequenceImage(
    String fileName,
  ) {
    return SpriteAnimation.load(
        'ghost/$fileName',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ));
  }

  static Future<SpriteAnimation> get idleLeft =>
      _sequenceImage('ghost_right.png');
  static Future<SpriteAnimation> get idleRight =>
      _sequenceImage('ghost_right.png');
  static Future<SpriteAnimation> get runLeft =>
      _sequenceImage('ghost_right.png');
  static Future<SpriteAnimation> get runRight =>
      _sequenceImage('ghost_right.png');
  static Future<SpriteAnimation> get runUp => _sequenceImage('ghost_right.png');
  static Future<SpriteAnimation> get idleUp =>
      _sequenceImage('ghost_right.png');
  static Future<SpriteAnimation> get idleDown =>
      _sequenceImage('ghost_right.png');
  static Future<SpriteAnimation> get runDown =>
      _sequenceImage('ghost_right.png');
}
