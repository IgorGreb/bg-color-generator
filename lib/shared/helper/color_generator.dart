// ignore_for_file: deprecated_member_use, public_member_api_docs, lines_longer_than_80_chars

import 'dart:math';

import 'package:flutter/material.dart';

/// Generates opaque colors from the full 24-bit RGB space.
///
/// Total unique colors: 16,777,216.
class ColorGenerator {
  /// Creates a color generator.
  ColorGenerator() : _state = _random.nextInt(_colorSpaceSize);

  static final Random _random = Random();
  static const int _colorSpaceSize = 0x1000000; // 16,777,216
  static const int _mask24Bit = 0x00FFFFFF;
  static const int _fullAlphaMask = 0xFF000000;
  // Odd increment => coprime with 2^24, so the sequence visits all 24-bit values.
  static const int _step = 15_485_863;
  int _state;

  Color nextColor({Color? avoid}) {
    _state = (_state + _step) & _mask24Bit;

    if (avoid != null) {
      final avoidRgb = avoid.value & _mask24Bit;
      if (_state == avoidRgb) {
        _state = (_state + _step) & _mask24Bit;
      }
    }

    return Color(_fullAlphaMask | _state);
  }
}
