// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

@immutable
class HomePageState {
  const HomePageState({
    required this.backgroundColor,
  });

  final Color backgroundColor;

  HomePageState copyWith({
    Color? backgroundColor,
  }) {
    return HomePageState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
