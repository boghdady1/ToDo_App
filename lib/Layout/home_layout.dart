import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/provider.dart';
import 'package:todo_app/screens/Tasks/tasks_button_Sheet.dart';
import 'package:todo_app/screens/Tasks/tasks_tab.dart';
import 'package:todo_app/screens/settings/settings_tab.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  static const String routeName = "home Layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> tabs = [TasksTab(), SettingsTab()];

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        shadowColor:
            prov.themeMode == ThemeMode.light ? Colors.white : Colors.blue,
        color: prov.themeMode == ThemeMode.light
            ? Colors.white
            : Color(0xff141922),
        elevation: 0,
        notchMargin: 8,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icon_list.png"),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icon_settings.png"),
                ),
                label: "")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          showTasksModalbuttonSheet();
        },
        child: Icon(Icons.add, size: 40),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[currentIndex],
    );
  }

  void showTasksModalbuttonSheet() {
    showModalBottomSheet(

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(18), topLeft: Radius.circular(18))),
        context: context,
        builder: (context) {
          return TasksButtonSheet();
        });
  }
}
