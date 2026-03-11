// ignore_for_file: public_member_api_docs

import 'package:bg_color_generator/components/home_page/bloc/home_page_state.dart';
import 'package:bg_color_generator/shared/helper/color_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final ColorGenerator _colorGenerator;

  HomePageCubit({
    ColorGenerator? colorGenerator,
  }) : _colorGenerator = colorGenerator ?? ColorGenerator(),
       super(const HomePageState(backgroundColor: Colors.white));

  void changeBackgroundColor() {
    final newColor = _colorGenerator.nextColor(avoid: state.backgroundColor);
    emit(state.copyWith(backgroundColor: newColor));
  }
}
