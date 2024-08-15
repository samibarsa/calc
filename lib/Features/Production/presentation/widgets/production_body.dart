import 'package:calc_app/Features/Production/presentation/pages/prodaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'list_view_production_item.dart';

class ProductionBody extends StatelessWidget {
  const ProductionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            SizedBox(height:10.h),
          const  Text("اسم الصنف",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height:10.h),
            Expanded(
              child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => IntrinsicHeight(
              child: Column(
                children: [
                  ListViewItem(
                    index: index,
                  ),
                ],
              ),
                    ),
                  ),
            ),
          ],
        ));
  }
}
