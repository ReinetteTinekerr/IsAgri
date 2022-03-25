import 'package:flutter/material.dart';
import 'package:mvvm_skeleton/src/presentation/main/finance.dart';
import 'package:mvvm_skeleton/src/presentation/main/home/home_page.dart';
import 'package:mvvm_skeleton/src/presentation/main/tips_page.dart';
import 'package:mvvm_skeleton/src/presentation/main/settings_page.dart';
import 'package:mvvm_skeleton/src/presentation/resources/strings_manager.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final List<Widget> pages = const [
    HomePage(),
    AuditPage(),
    TipsPage(),
    SettingsPage()
  ];

  final List<String> titles = [
    AppStrings.home,
    AppStrings.audit,
    AppStrings.tips,
    AppStrings.settings,
  ];
  var _title = AppStrings.home;
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: onTap,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            label: AppStrings.home,
            selectedIcon: Icon(Icons.calendar_month),
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            label: AppStrings.audit,
            selectedIcon: Icon(Icons.receipt_long),
          ),
          NavigationDestination(
            icon: Icon(Icons.tips_and_updates_outlined),
            label: AppStrings.tips,
            selectedIcon: Icon(Icons.tips_and_updates),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            label: AppStrings.settings,
            selectedIcon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

  onTap(int index) {
    setState(() {
      _currentIndex = index;
      _title = titles[index];
    });
  }
}
