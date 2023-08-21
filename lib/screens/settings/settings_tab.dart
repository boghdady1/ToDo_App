import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/settings/theme_button_sheet.dart';
import 'package:todo_app/style/theme/My_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../provider/provider.dart';
import 'lang_button_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: .18 * 870,
        title: Text(AppLocalizations.of(context)!.settings,
            style: TextStyle(
                color: prov.themeMode == ThemeMode.light
                    ? Colors.white
                    : Colors.black)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, left: 30, right: 1, bottom: 10),
              child: Text(AppLocalizations.of(context)!.language,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: prov.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 40),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        prov.themeMode == ThemeMode.light
                            ? Colors.white
                            : Color(0xff141922)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          side: BorderSide(color: primaryColor)),
                    )),
                onPressed: () {
                  return showLanguageModalSheet();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(prov.language == "ar"
                        ? AppLocalizations.of(context)!.arabic
                        : "English"),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, left: 30, right: 1, bottom: 10),
              child: Text(AppLocalizations.of(context)!.mode,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: prov.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 40),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        prov.themeMode == ThemeMode.light
                            ? Colors.white
                            : Color(0xff141922)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          side: BorderSide(color: primaryColor)),
                    )),
                onPressed: () {
                  return showThemeModalSheet();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(prov.themeMode == ThemeMode.light
                        ? "${AppLocalizations.of(context)!.lightMode}"
                        : "${AppLocalizations.of(context)!.darkMode}"),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }

  void showThemeModalSheet() {
    showModalBottomSheet(
      backgroundColor: Color(0xff141922),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: primaryColor, width: 2)),
      context: context,
      builder: (context) {
        return ShowThemeButtonSheet();
      },
    );
  }

  void showLanguageModalSheet() {
    showModalBottomSheet(
      backgroundColor: Color(0xff141922),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: primaryColor, width: 2)),
      context: context,
      builder: (context) {
        return ShowLangButtonSheet();
      },
    );
  }
}
