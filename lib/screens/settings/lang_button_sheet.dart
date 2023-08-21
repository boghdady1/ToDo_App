import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/provider.dart';

class ShowLangButtonSheet extends StatelessWidget {
  ShowLangButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              prov.changeLanguage('en');
            },
            child: Row(
              children: [
                Text("English",
                    style: prov.language == "en"
                        ? TextStyle(color: Colors.blue)
                        : TextStyle(color: Colors.white)),
                const Spacer(),
                Icon(
                  Icons.done,
                  color: prov.language == "en" ? Colors.blue : Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              prov.changeLanguage('ar');
            },
            child: Row(
              children: [
                Text("Arabic",
                    style: prov.language == "ar"
                        ? TextStyle(color: Colors.blue)
                        : TextStyle(color: Colors.white)),
                const Spacer(),
                Icon(
                  Icons.done,
                  color: prov.language == "ar" ? Colors.blue : Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
