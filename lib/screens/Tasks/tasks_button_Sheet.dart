import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/provider.dart';
import 'package:todo_app/style/theme/My_theme.dart';

class TasksButtonSheet extends StatefulWidget {
  const TasksButtonSheet({super.key});

  @override
  State<TasksButtonSheet> createState() => _TasksButtonSheetState();
}

class _TasksButtonSheetState extends State<TasksButtonSheet> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(18), topLeft: Radius.circular(18)),
        color: prov.themeMode == ThemeMode.light
            ? Colors.white
            : Color(0xff060E1E))
    ,
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 20),
    child: Text(AppLocalizations.of(context)!.addNewTask,
    style: TextStyle(
    color: prov.themeMode == ThemeMode.light
    ? Colors.black
        : Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    )),
    ),
    TextField(
    style: TextStyle(
    color: prov.themeMode == ThemeMode.light
    ? Colors.black
        : Colors.white),
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
    color: prov.themeMode == ThemeMode.light
    ? Color(0xff5D9CEC)
        : Color(0xff5D9CEC))),
    label: Text(
    AppLocalizations.of(context)!.taskTitle,
    style: TextStyle(
    color: prov.themeMode == ThemeMode.light
    ? Colors.black
        : Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: primaryColor))),
    ),
    SizedBox(
    height: 20,
    ),
    TextField(
    maxLines: 4,
    style: TextStyle(
    color: prov.themeMode == ThemeMode.light
    ? Colors.black
        : Colors.white),
    decoration: InputDecoration(
    label: Text(
    AppLocalizations.of(context)!.taskDescription,
    style: TextStyle(
    color: prov.themeMode == ThemeMode.light
    ? Colors.black
        : Colors.white),
    ),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
    color: prov.themeMode == ThemeMode.light
    ? Color(0xff5D9CEC)
        : Color(0xff5D9CEC))),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: primaryColor))),
    ),
    SizedBox(
    height: 20,
    ),
    Container(
    alignment: prov.language=="en"?Alignment.topLeft: Alignment.topRight,
    child: Text( AppLocalizations.of(context)!.selectDate, style: TextStyle(
    color: prov.themeMode == ThemeMode.light
    ? Colors.black
        : Colors.white),),
    ),
    SizedBox(
    height: 20,
    ),
    InkWell(
    onTap: () {
    ShowDatePicker();
    },
    child: Container(
    alignment: Alignment.center,
    child: Text("${DateTime.now().toString().substring(0,10)}"
    ,
    style: TextStyle(
    color: prov.themeMode == ThemeMode.light
    ? Colors.black
        : Colors.white),
    ),
    ),
    )

    ],
    ),
    ),
    );
  }

  void ShowDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }
}
