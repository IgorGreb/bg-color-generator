// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

@immutable
class HomePageState {
  final Color backgroundColor;

  const HomePageState({
    required this.backgroundColor,
  });

  HomePageState copyWith({
    Color? backgroundColor,
  }) {
    return HomePageState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
