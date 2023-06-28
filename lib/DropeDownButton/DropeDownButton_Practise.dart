import 'package:flutter/material.dart';

class DropeDown extends StatefulWidget {
  const DropeDown({Key? key}) : super(key: key);

  @override
  State<DropeDown> createState() => _DropeDownState();
}

class _DropeDownState extends State<DropeDown> {
  List<String> citylist = ["Surat", "Ahemdabad", "Vadodra"];
  String? gender;

  List<DropdownMenuItem> getDropeDownItemList() {
    List<DropdownMenuItem> l = [];

    for (int i = 0; i < citylist.length; i++) {
      l.add(DropdownMenuItem(value: citylist[i], child: Text(citylist[i])));
    }
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            shadowColor: Colors.black54,
            elevation: 10,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
           child: Container(
              padding: EdgeInsets.all(20),
              child: DropdownButton(
                value: gender,
                underline: Container(),
                disabledHint: Text("jhfhgd"),
                hint: Text("Select City"),
                items: getDropeDownItemList(),
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
