import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/provider.dart';

class ShowThemeButtonSheet extends StatelessWidget {
  const ShowThemeButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    var Prov = Provider.of<MyProvider>(context);
    return Container(

      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Prov.changeTheme(ThemeMode.light);
            },
            child: Row(
              children: [
                Text(AppLocalizations.of(context)!.lightMode,
                    style: prov.themeMode == ThemeMode.light
                        ? TextStyle(color: Colors.blue)
                        : TextStyle(color: Colors.white)),
                const Spacer(),
                Icon(
                  Icons.done,
                  color: prov.themeMode==ThemeMode.light?Colors.blue:Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Prov.changeTheme(ThemeMode.dark);
            },
            child: Row(
              children: [
                Text(AppLocalizations.of(context)!.darkMode,
                    style: prov.themeMode == ThemeMode.dark
                        ? TextStyle(color: Colors.blue)
                        : TextStyle(color: Colors.white)),
                const Spacer(),
                Icon(
                  Icons.done,
                 color: prov.themeMode==ThemeMode.dark?Colors.blue:Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
