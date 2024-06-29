import 'package:flutter/material.dart';
import 'package:project/components/layout/app_bar.dart';
import 'package:project/components/layout/my_bottom_nagivation_bar.dart';
import 'package:project/routes/app_route.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key, this.selectedIndex = 0});

  final int? selectedIndex;

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int? _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: AppRoute.appPages,
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex!,
        navigateBottomBar: _navigateBottomBar,
      ),
    );
  }
}
