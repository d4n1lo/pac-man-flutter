import 'package:bonfire/bonfire.dart';

class DotSprite {
//argumentos precisam deste metodo SpriteAnimation
  static Future<SpriteAnimation> _sequenceImage(
    String fileName,
  ) {
    return SpriteAnimation.load(
        'map/dot.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ));
  }

  static Future<SpriteAnimation> get idleLeft => _sequenceImage('dot.png');
  static Future<SpriteAnimation> get idleRight => _sequenceImage('dot.png');
  static Future<SpriteAnimation> get runLeft => _sequenceImage('dot.png');
  static Future<SpriteAnimation> get runRight => _sequenceImage('dot.png');
  static Future<SpriteAnimation> get runUp => _sequenceImage('dot.png');
  static Future<SpriteAnimation> get idleUp => _sequenceImage('dot.png');
  static Future<SpriteAnimation> get idleDown => _sequenceImage('dot.png');
  static Future<SpriteAnimation> get runDown => _sequenceImage('dot.png');
}
