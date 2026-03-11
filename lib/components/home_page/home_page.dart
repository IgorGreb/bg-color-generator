// ignore_for_file: public_member_api_docs

import 'package:bg_color_generator/components/home_page/bloc/home_page_cubit.dart';
import 'package:bg_color_generator/components/home_page/bloc_provider/home_page_cubit_provider.dart';
import 'package:bg_color_generator/shared/helper/color_generator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    this.colorGenerator,
  });

  final ColorGenerator? colorGenerator;

  @override
  Widget build(BuildContext context) {
    return HomePageCubitProvider(
      colorGenerator: colorGenerator,
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: GestureDetector(
              onTap: () => context.read<HomePageCubit>().changeBackgroundColor(),
              child: Container(
                color: context.select(
                  (HomePageCubit cubit) => cubit.state.backgroundColor,
                ),
                child: const Center(
                  child: Text(
                    'Hi there!',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
