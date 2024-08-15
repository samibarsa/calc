import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    var width2 = MediaQuery.of(context).size.width / 4.2;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width2,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text(" data $index"),
        ),
        Container(
          width: width2,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text(" data $index"),
        ),
        Container(
          width: width2,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text(" data $index"),
        ),
        Container(
          width: width2,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text(" data $index"),
        ),
      ],
    );
  }
}
