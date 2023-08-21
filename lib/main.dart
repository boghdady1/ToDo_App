import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Layout/home_layout.dart';
import 'package:todo_app/provider/provider.dart';
import 'package:todo_app/style/theme/My_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => MyProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var prov=Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [Locale("ar"), Locale("en")],
      locale: Locale(prov.language),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: prov.themeMode,
    );
  }
}
