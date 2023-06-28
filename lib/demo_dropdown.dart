import 'package:flutter/material.dart';

class Demo_Dropdown extends StatefulWidget {
  const Demo_Dropdown({super.key});

  @override
  State<Demo_Dropdown> createState() => _Demo_DropdownState();
}

class _Demo_DropdownState extends State<Demo_Dropdown> {
  List citylist = ["Surat", "Mumbai", "Ahemdabad", "Rajkot"];

  String selcity = "Select City";

  List<DropdownMenuItem> setcity() {
    List<DropdownMenuItem> l = [];
    for (int i = 0; i < citylist.length; i++) {
      l.add(DropdownMenuItem(value: citylist[i], child: Text(citylist[i])));
    }
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton(
        // value: selcity, // if you want hint than remove value
        items: setcity(),
        hint: Text(selcity),
        focusColor: Colors.transparent,
        onChanged: (value) {
          selcity = value;
        },
      ),
    );
  }
}
