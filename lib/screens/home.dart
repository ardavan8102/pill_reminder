import 'package:flutter/material.dart';
import 'package:pill_reminder/utils/constants/colors.dart';
import 'package:pill_reminder/utils/helpers/helper_functions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: dark ? myColors.dark : myColors.primaryBackground,
    );
  }
}