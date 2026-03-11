import 'package:bg_color_generator/components/home_page/bloc/home_page_cubit.dart';
import 'package:bg_color_generator/shared/helper/color_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A provider widget that injects a [HomePageCubit] into the widget tree.
class HomePageCubitProvider extends StatelessWidget {
  /// Creates a [HomePageCubitProvider] that provides a [HomePageCubit].
  const HomePageCubitProvider({
    required this.child,
    super.key,
    this.colorGenerator,
  });

  /// The child widget that will be wrapped by the [BlocProvider].
  final Widget child;

  /// An optional [ColorGenerator] instance to be used by the [HomePageCubit].
  final ColorGenerator? colorGenerator;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageCubit>(
      create: (context) => HomePageCubit(colorGenerator: colorGenerator),
      child: child,
    );
  }
}
