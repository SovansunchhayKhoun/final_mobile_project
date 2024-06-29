import 'package:flutter/material.dart';
import 'package:project/components/layout/app_bar.dart';
import 'package:project/theme/app_size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSize.md),
        child: Text('Home'),
      ),
    );
  }
}
