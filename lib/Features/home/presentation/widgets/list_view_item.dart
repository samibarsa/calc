import 'dart:developer';

import 'package:calc_app/Features/home/presentation/pages/detailes.dart';
import 'package:calc_app/Features/Production/presentation/pages/prodaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.index,
  });

  @override
  final int index;

  @override
  Widget build(BuildContext context) {
    TextStyle  textstyle() =>
        const TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        key: Key(index.toString()),
        endActionPane: ActionPane(motion:const StretchMotion(), children: [
          SlidableAction(
            onPressed: (contex) {},
            label: "حذف",
            icon: Icons.delete_forever,
            backgroundColor: Colors.red,
          )
        ]),
        startActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: (contex) {
              Navigator.of(contex).push(MaterialPageRoute(builder: (context) =>const MyWidget()));

              log("إنتاج");
            },
            backgroundColor: Colors.blue,
            icon: Icons.add,
            label: "إنتاج",
          ),
          SlidableAction(
            onPressed: (contex) {
              log("بيع");
            },
            backgroundColor: const Color.fromARGB(255, 33, 243, 100),
            icon: Icons.arrow_downward_outlined,
            label: "بيع",
          )
        ]),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: const Color.fromARGB(153, 192, 187, 187),
          ),
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "21",
                          style: textstyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  " دبدوب",
                  style: textstyle(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
